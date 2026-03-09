-- place_bid function (Critical, Atomic)
CREATE OR REPLACE FUNCTION place_bid(
  p_auction_id uuid,
  p_bidder_id uuid,
  p_amount numeric,
  p_max_amount numeric,
  p_idempotency_key text,
  p_ip_hash text
) RETURNS jsonb LANGUAGE plpgsql SECURITY INVOKER AS $$
DECLARE
  v_auction record;
  v_existing_bid record;
  v_is_approved boolean;
  v_current_winning_bid record;
  v_current_high_amount numeric;
  v_increment numeric;
  v_new_bid_id uuid;
  v_auction_extended boolean := false;
  v_new_ends_at timestamptz;
  v_effective_amount numeric;
BEGIN
  -- 1. Check idempotency
  SELECT id, amount INTO v_existing_bid FROM bids WHERE idempotency_key = p_idempotency_key;
  IF FOUND THEN
    RETURN jsonb_build_object('success', true, 'bid_id', v_existing_bid.id, 'new_high_bid', v_existing_bid.amount, 'auction_extended', false);
  END IF;

  -- 2. Lock auction row
  SELECT * INTO v_auction FROM auction_events WHERE id = p_auction_id FOR UPDATE;

  -- 3. Validate auction status and end time
  IF v_auction.status != 'live' OR v_auction.ends_at <= now() THEN
    RETURN jsonb_build_object('success', false, 'error', 'Auction is not active.');
  END IF;

  -- 4. Validate bidder approval
  SELECT EXISTS (SELECT 1 FROM bidder_auction_approvals WHERE auction_id = p_auction_id AND bidder_id = p_bidder_id) INTO v_is_approved;
  IF NOT v_is_approved THEN
    RETURN jsonb_build_object('success', false, 'error', 'Bidder is not approved for this auction.');
  END IF;

  -- 5. Validate bidder is not seller
  IF EXISTS (SELECT 1 FROM properties WHERE listing_key = v_auction.property_id AND seller_id IN (SELECT id FROM sellers WHERE profile_id IN (SELECT profile_id FROM bidders WHERE id = p_bidder_id))) THEN
    RETURN jsonb_build_object('success', false, 'error', 'Seller cannot bid on their own property.');
  END IF;

  -- 6. Get current winning bid
  SELECT * INTO v_current_winning_bid FROM bids WHERE auction_id = p_auction_id AND status = 'winning' ORDER BY amount DESC LIMIT 1;
  IF v_current_winning_bid.id IS NULL THEN
    v_current_high_amount := v_auction.starting_bid;
  ELSE
    v_current_high_amount := v_current_winning_bid.amount;
  END IF;

  -- 7. Get applicable bid increment
  SELECT increment_amount INTO v_increment
  FROM bid_increments
  WHERE (auction_id = p_auction_id OR auction_id IS NULL) AND price_floor <= v_current_high_amount
  ORDER BY auction_id NULLS LAST, price_floor DESC LIMIT 1;
  IF v_increment IS NULL THEN v_increment := 0; END IF;

  -- 8. Validate amount
  IF v_current_winning_bid.id IS NOT NULL AND p_amount < (v_current_high_amount + v_increment) THEN
    RETURN jsonb_build_object('success', false, 'error', 'Bid amount must be at least ' || (v_current_high_amount + v_increment));
  END IF;

  -- If first bid, just need to be >= starting_bid
  IF v_current_winning_bid.id IS NULL AND p_amount < v_auction.starting_bid THEN
     RETURN jsonb_build_object('success', false, 'error', 'Bid amount must be at least the starting bid of ' || v_auction.starting_bid);
  END IF;

  v_effective_amount := p_amount;

  -- 9. Proxy Bidding Logic
  IF v_current_winning_bid.id IS NOT NULL AND v_current_winning_bid.max_amount IS NOT NULL THEN
    -- The previous winning bid had a proxy max amount set
    IF p_max_amount IS NOT NULL THEN
      -- Both have proxies. Who wins?
      IF p_max_amount > v_current_winning_bid.max_amount THEN
        -- New bidder outbids the old proxy. New effective amount is old max + 1 increment (or up to p_max)
        v_effective_amount := v_current_winning_bid.max_amount + v_increment;
        IF v_effective_amount > p_max_amount THEN
          v_effective_amount := p_max_amount;
        END IF;

        -- Insert old proxy's losing counter-bid up to their max
        INSERT INTO bids (auction_id, bidder_id, amount, max_amount, idempotency_key, status, ip_address_hash)
        VALUES (p_auction_id, v_current_winning_bid.bidder_id, v_current_winning_bid.max_amount, v_current_winning_bid.max_amount, p_idempotency_key || '_counter1', 'outbid', NULL);

      ELSE
        -- Old proxy wins or ties. Old proxy places a counter-bid.
        v_effective_amount := p_max_amount;

        -- Insert new bidder's losing bid up to their max
        INSERT INTO bids (auction_id, bidder_id, amount, max_amount, idempotency_key, status, ip_address_hash)
        VALUES (p_auction_id, p_bidder_id, p_max_amount, p_max_amount, p_idempotency_key, 'outbid', p_ip_hash);

        -- The effective winning bid belongs to the old proxy bidder
        v_effective_amount := p_max_amount + v_increment;
        IF v_effective_amount > v_current_winning_bid.max_amount THEN
            v_effective_amount := v_current_winning_bid.max_amount;
        END IF;

        INSERT INTO bids (auction_id, bidder_id, amount, max_amount, idempotency_key, status, ip_address_hash)
        VALUES (p_auction_id, v_current_winning_bid.bidder_id, v_effective_amount, v_current_winning_bid.max_amount, p_idempotency_key || '_counter2', 'winning', NULL)
        RETURNING id INTO v_new_bid_id;

        -- Mark existing 'winning' as 'outbid'
        UPDATE bids SET status = 'outbid' WHERE auction_id = p_auction_id AND id != v_new_bid_id AND status = 'winning';

        RETURN jsonb_build_object('success', true, 'bid_id', v_new_bid_id, 'new_high_bid', v_effective_amount, 'auction_extended', false, 'new_ends_at', v_auction.ends_at);
      END IF;
    ELSE
      -- New bidder doesn't have a proxy, old bidder does.
      IF p_amount > v_current_winning_bid.max_amount THEN
        -- New bidder simply outbids the old proxy max.
        -- We insert the old proxy's losing max bid.
        INSERT INTO bids (auction_id, bidder_id, amount, max_amount, idempotency_key, status, ip_address_hash)
        VALUES (p_auction_id, v_current_winning_bid.bidder_id, v_current_winning_bid.max_amount, v_current_winning_bid.max_amount, p_idempotency_key || '_counter1', 'outbid', NULL);
        v_effective_amount := p_amount;
      ELSE
         -- Old proxy outbids the new straight bid.
         -- Insert new bidder's straight bid as losing
         INSERT INTO bids (auction_id, bidder_id, amount, max_amount, idempotency_key, status, ip_address_hash)
         VALUES (p_auction_id, p_bidder_id, p_amount, NULL, p_idempotency_key, 'outbid', p_ip_hash);

         v_effective_amount := p_amount + v_increment;
         IF v_effective_amount > v_current_winning_bid.max_amount THEN
            v_effective_amount := v_current_winning_bid.max_amount;
         END IF;

         INSERT INTO bids (auction_id, bidder_id, amount, max_amount, idempotency_key, status, ip_address_hash)
         VALUES (p_auction_id, v_current_winning_bid.bidder_id, v_effective_amount, v_current_winning_bid.max_amount, p_idempotency_key || '_counter2', 'winning', NULL)
         RETURNING id INTO v_new_bid_id;

         -- Mark existing 'winning' as 'outbid'
         UPDATE bids SET status = 'outbid' WHERE auction_id = p_auction_id AND id != v_new_bid_id AND status = 'winning';

         RETURN jsonb_build_object('success', true, 'bid_id', v_new_bid_id, 'new_high_bid', v_effective_amount, 'auction_extended', false, 'new_ends_at', v_auction.ends_at);
      END IF;
    END IF;
  END IF;

  -- Insert the new winning bid (standard case or where new proxy wins)
  INSERT INTO bids (auction_id, bidder_id, amount, max_amount, idempotency_key, status, ip_address_hash)
  VALUES (p_auction_id, p_bidder_id, v_effective_amount, p_max_amount, p_idempotency_key, 'winning', p_ip_hash)
  RETURNING id INTO v_new_bid_id;

  -- 10. Mark previous winning bid as outbid
  UPDATE bids SET status = 'outbid' WHERE auction_id = p_auction_id AND id != v_new_bid_id AND status = 'winning';

  -- 11. Soft-close check
  v_new_ends_at := v_auction.ends_at;
  IF extract(epoch from (v_auction.ends_at - now())) < v_auction.soft_close_buffer_seconds AND v_auction.extension_count < v_auction.max_extensions THEN
    v_new_ends_at := v_auction.ends_at + (v_auction.soft_close_buffer_seconds * interval '1 second');
    IF v_new_ends_at > v_auction.hard_close_at THEN
      v_new_ends_at := v_auction.hard_close_at;
    END IF;
    UPDATE auction_events SET ends_at = v_new_ends_at, extension_count = extension_count + 1 WHERE id = p_auction_id;
    v_auction_extended := true;
  END IF;

  -- 12. Use pg_net to call Edge Function for notification dispatch (Need app.supabase_url setup per environment)
  PERFORM net.http_post(
    current_setting('app.supabase_url') || '/notify-bid',
    jsonb_build_object('auction_id', p_auction_id, 'bid_id', v_new_bid_id, 'amount', v_effective_amount)
  );

  RETURN jsonb_build_object('success', true, 'bid_id', v_new_bid_id, 'new_high_bid', v_effective_amount, 'auction_extended', v_auction_extended, 'new_ends_at', v_new_ends_at);
END;
$$;

-- calculate_settlement
CREATE OR REPLACE FUNCTION calculate_settlement(p_auction_id uuid)
RETURNS void LANGUAGE plpgsql SECURITY INVOKER AS $$
DECLARE
  v_winning_bid record;
  v_auction record;
  v_seller record;
  v_buyer_premium numeric;
  v_seller_commission numeric;
  v_total_due numeric;
  v_balance_due numeric;
  v_settlement_id uuid;
  v_invoice_number text;
  v_invoice_id uuid;
BEGIN
  -- 1. Get winning bid
  SELECT * INTO v_winning_bid FROM bids WHERE auction_id = p_auction_id AND status = 'winning' ORDER BY amount DESC LIMIT 1;
  IF NOT FOUND THEN RETURN; END IF;

  SELECT * INTO v_auction FROM auction_events WHERE id = p_auction_id;
  SELECT s.* INTO v_seller FROM properties p JOIN sellers s ON p.seller_id = s.id WHERE p.listing_key = v_auction.property_id;

  -- 2. Calculate buyer premium
  IF v_winning_bid.amount >= 750000 THEN
    v_buyer_premium := v_winning_bid.amount * 0.08;
  ELSE
    v_buyer_premium := v_winning_bid.amount * 0.10;
  END IF;

  -- 3. Calculate seller commission
  v_seller_commission := coalesce(v_seller.commission_rate, CASE v_seller.type
    WHEN 'individual' THEN 15.00
    WHEN 'estate' THEN 15.00
    WHEN 'bank' THEN 10.00
    WHEN 'corporate' THEN 12.00
    WHEN 'government' THEN 10.00
    ELSE 15.00
  END) / 100 * v_winning_bid.amount;

  -- 4. Insert settlement
  v_total_due := v_winning_bid.amount + v_buyer_premium;
  v_balance_due := v_total_due - v_auction.earnest_money_amount;

  INSERT INTO settlements (auction_id, winning_bid_id, hammer_price, buyer_premium_amount, total_due, earnest_money_applied, balance_due, seller_payout_amount, commission_amount, status)
  VALUES (p_auction_id, v_winning_bid.id, v_winning_bid.amount, v_buyer_premium, v_total_due, v_auction.earnest_money_amount, v_balance_due, v_winning_bid.amount - v_seller_commission, v_seller_commission, 'pending')
  RETURNING id INTO v_settlement_id;

  -- 5. Generate invoice
  v_invoice_number := 'SPX-' || to_char(now(), 'YYYY') || '-' || upper(substring(gen_random_uuid()::text, 1, 6));
  INSERT INTO invoices (auction_id, bidder_id, settlement_id, invoice_number, hammer_price, buyer_premium_amount, total_due, balance_due, status)
  VALUES (p_auction_id, v_winning_bid.bidder_id, v_settlement_id, v_invoice_number, v_winning_bid.amount, v_buyer_premium, v_total_due, v_total_due, 'draft')
  RETURNING id INTO v_invoice_id;

  INSERT INTO invoice_line_items (invoice_id, description, amount, line_type, sort_order) VALUES
  (v_invoice_id, 'Hammer Price', v_winning_bid.amount, 'hammer_price', 1),
  (v_invoice_id, 'Buyer Premium', v_buyer_premium, 'buyer_premium', 2);

  -- 6. Insert notifications
  INSERT INTO notifications (profile_id, type, title, body, entity_type, entity_id)
  SELECT profile_id, 'auction_won', 'You won the auction!', 'Invoice ' || v_invoice_number || ' is ready.', 'auction', p_auction_id
  FROM bidders WHERE id = v_winning_bid.bidder_id;

  INSERT INTO notifications (profile_id, type, title, body, entity_type, entity_id)
  VALUES (v_seller.profile_id, 'seller_update', 'Auction Ended', 'Your property has sold. Settlement pending.', 'auction', p_auction_id);
END;
$$;

-- end_auction
CREATE OR REPLACE FUNCTION end_auction(p_auction_id uuid)
RETURNS void LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
  v_auction record;
BEGIN
  -- 1. Lock auction row
  SELECT * INTO v_auction FROM auction_events WHERE id = p_auction_id FOR UPDATE;

  -- 2. Verify status
  IF v_auction.status != 'live' OR v_auction.ends_at > now() THEN RETURN; END IF;

  -- 4. Set status ended
  UPDATE auction_events SET status = 'ended' WHERE id = p_auction_id;

  -- 5. Call settlement
  PERFORM calculate_settlement(p_auction_id);

  -- 6. Notifications
  PERFORM net.http_post(
    current_setting('app.supabase_url') || '/notify-auction-ended',
    jsonb_build_object('auction_id', p_auction_id)
  );
END;
$$;

-- end_auctions_batch
CREATE OR REPLACE FUNCTION end_auctions_batch()
RETURNS void LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE
  v_auction record;
BEGIN
  FOR v_auction IN
    SELECT id FROM auction_events WHERE status = 'live' AND ends_at <= now() FOR UPDATE SKIP LOCKED
  LOOP
    PERFORM end_auction(v_auction.id);
  END LOOP;
END;
$$;

-- get_next_minimum_bid
CREATE OR REPLACE FUNCTION get_next_minimum_bid(p_auction_id uuid)
RETURNS numeric LANGUAGE plpgsql SECURITY INVOKER AS $$
DECLARE
  v_current_high_bid numeric;
  v_increment numeric;
  v_starting_bid numeric;
BEGIN
  SELECT amount INTO v_current_high_bid FROM bids WHERE auction_id = p_auction_id AND status = 'winning' ORDER BY amount DESC LIMIT 1;

  IF v_current_high_bid IS NULL THEN
    SELECT starting_bid INTO v_starting_bid FROM auction_events WHERE id = p_auction_id;
    RETURN v_starting_bid;
  END IF;

  SELECT increment_amount INTO v_increment
  FROM bid_increments
  WHERE (auction_id = p_auction_id OR auction_id IS NULL) AND price_floor <= v_current_high_bid
  ORDER BY auction_id NULLS LAST, price_floor DESC LIMIT 1;

  IF v_increment IS NULL THEN v_increment := 0; END IF;

  RETURN v_current_high_bid + v_increment;
END;
$$;

-- approve_bidder_for_auction
CREATE OR REPLACE FUNCTION approve_bidder_for_auction(p_bidder_id uuid, p_auction_id uuid, p_approved_by uuid)
RETURNS void LANGUAGE plpgsql SECURITY INVOKER AS $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM bidders WHERE id = p_bidder_id AND status != 'suspended') THEN
    RAISE EXCEPTION 'Bidder is invalid or suspended';
  END IF;

  INSERT INTO bidder_auction_approvals (bidder_id, auction_id, approved_by) VALUES (p_bidder_id, p_auction_id, p_approved_by);

  INSERT INTO notifications (profile_id, type, title, body, entity_type, entity_id)
  SELECT profile_id, 'bid_confirmed', 'Approved for Auction', 'You can now bid.', 'auction', p_auction_id
  FROM bidders WHERE id = p_bidder_id;
END;
$$;
