-- Enable RLS on all tables
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE referral_sources ENABLE ROW LEVEL SECURITY;
ALTER TABLE sellers ENABLE ROW LEVEL SECURITY;
ALTER TABLE properties ENABLE ROW LEVEL SECURITY;
ALTER TABLE auction_events ENABLE ROW LEVEL SECURITY;
ALTER TABLE bidders ENABLE ROW LEVEL SECURITY;
ALTER TABLE bids ENABLE ROW LEVEL SECURITY;
ALTER TABLE bid_increments ENABLE ROW LEVEL SECURITY;
ALTER TABLE lots ENABLE ROW LEVEL SECURITY;
ALTER TABLE bidder_auction_approvals ENABLE ROW LEVEL SECURITY;
ALTER TABLE settlements ENABLE ROW LEVEL SECURITY;
ALTER TABLE invoices ENABLE ROW LEVEL SECURITY;
ALTER TABLE invoice_line_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE property_media ENABLE ROW LEVEL SECURITY;
ALTER TABLE watchlists ENABLE ROW LEVEL SECURITY;
ALTER TABLE notifications ENABLE ROW LEVEL SECURITY;
ALTER TABLE activities ENABLE ROW LEVEL SECURITY;
ALTER TABLE audit_logs ENABLE ROW LEVEL SECURITY;

-- Profiles: Own profile, Admins/Auctioneers see all
CREATE POLICY "Users can view their own profile" ON profiles FOR SELECT USING (auth.uid() = id);
CREATE POLICY "Admins and Auctioneers can view all profiles" ON profiles FOR SELECT USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);
CREATE POLICY "Users can update their own profile" ON profiles FOR UPDATE USING (auth.uid() = id);

-- Referral Sources: Admins/Auctioneers see/manage all
CREATE POLICY "Admins/Auctioneers full access to referral sources" ON referral_sources FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Sellers: Own data, Admins/Auctioneers see all
CREATE POLICY "Sellers view own data" ON sellers FOR SELECT USING (auth.uid() = profile_id);
CREATE POLICY "Sellers update own data" ON sellers FOR UPDATE USING (auth.uid() = profile_id);
CREATE POLICY "Admins/Auctioneers full access to sellers" ON sellers FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Properties: Active/public read by all, Sellers read own, Admins/Auctioneers see all
CREATE POLICY "Anonymous/bidders read active properties" ON properties FOR SELECT USING (
  standard_status IN ('Active', 'Coming Soon')
);
CREATE POLICY "Sellers read own properties" ON properties FOR SELECT USING (
  EXISTS (SELECT 1 FROM sellers WHERE id = properties.seller_id AND profile_id = auth.uid())
);
CREATE POLICY "Admins/Auctioneers full access to properties" ON properties FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Auction Events: Public read, Sellers read own, Admins/Auctioneers see all
CREATE POLICY "Anonymous/bidders read public auctions" ON auction_events FOR SELECT USING (
  status IN ('scheduled', 'live', 'ended', 'settled')
);
CREATE POLICY "Sellers read own auctions" ON auction_events FOR SELECT USING (
  EXISTS (SELECT 1 FROM properties WHERE id = auction_events.property_id AND seller_id IN (
    SELECT id FROM sellers WHERE profile_id = auth.uid()
  ))
);
CREATE POLICY "Admins/Auctioneers full access to auctions" ON auction_events FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Bids: Bidders view own bids, Admins/Auctioneers see all
CREATE POLICY "Bidders view own bids" ON bids FOR SELECT USING (
  EXISTS (SELECT 1 FROM bidders WHERE id = bids.bidder_id AND profile_id = auth.uid())
);
CREATE POLICY "Admins/Auctioneers view all bids" ON bids FOR SELECT USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);
-- Note: NO INSERT policy for bids. Must use place_bid RPC.

-- Bid Increments: Public read
CREATE POLICY "Public read bid increments" ON bid_increments FOR SELECT USING (true);
CREATE POLICY "Admins/Auctioneers manage bid increments" ON bid_increments FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Lots: Public read
CREATE POLICY "Public read lots" ON lots FOR SELECT USING (true);
CREATE POLICY "Admins/Auctioneers manage lots" ON lots FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Bidder Approvals: Bidders view own, Admins/Auctioneers full access
CREATE POLICY "Bidders view own approvals" ON bidder_auction_approvals FOR SELECT USING (
  EXISTS (SELECT 1 FROM bidders WHERE id = bidder_auction_approvals.bidder_id AND profile_id = auth.uid())
);
CREATE POLICY "Admins/Auctioneers manage approvals" ON bidder_auction_approvals FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Bidders: Own, Admins/Auctioneers full access
CREATE POLICY "Bidders view own data" ON bidders FOR SELECT USING (profile_id = auth.uid());
CREATE POLICY "Admins/Auctioneers full access to bidders" ON bidders FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Settlements: Bidders view if won, Sellers view own, Admins/Auctioneers see all
CREATE POLICY "Bidders view won settlements" ON settlements FOR SELECT USING (
  EXISTS (SELECT 1 FROM bids WHERE id = settlements.winning_bid_id AND bidder_id IN (
    SELECT id FROM bidders WHERE profile_id = auth.uid()
  ))
);
CREATE POLICY "Sellers view own settlements" ON settlements FOR SELECT USING (
  EXISTS (SELECT 1 FROM auction_events a JOIN properties p ON a.property_id = p.id WHERE a.id = settlements.auction_id AND p.seller_id IN (
    SELECT id FROM sellers WHERE profile_id = auth.uid()
  ))
);
CREATE POLICY "Admins/Auctioneers manage settlements" ON settlements FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Invoices: Bidders view own, Admins/Auctioneers full access
CREATE POLICY "Bidders view own invoices" ON invoices FOR SELECT USING (
  EXISTS (SELECT 1 FROM bidders WHERE id = invoices.bidder_id AND profile_id = auth.uid())
);
CREATE POLICY "Admins/Auctioneers manage invoices" ON invoices FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Invoice Line Items: Bidders view own, Admins/Auctioneers full access
CREATE POLICY "Bidders view own invoice lines" ON invoice_line_items FOR SELECT USING (
  EXISTS (SELECT 1 FROM invoices WHERE id = invoice_line_items.invoice_id AND bidder_id IN (
    SELECT id FROM bidders WHERE profile_id = auth.uid()
  ))
);
CREATE POLICY "Admins/Auctioneers manage invoice lines" ON invoice_line_items FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Property Media: Public read
CREATE POLICY "Public read media" ON property_media FOR SELECT USING (true);
CREATE POLICY "Admins/Auctioneers manage media" ON property_media FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Watchlists: Own, Admins/Auctioneers see all
CREATE POLICY "Users view own watchlists" ON watchlists FOR SELECT USING (profile_id = auth.uid());
CREATE POLICY "Users manage own watchlists" ON watchlists FOR ALL USING (profile_id = auth.uid());
CREATE POLICY "Admins/Auctioneers view all watchlists" ON watchlists FOR SELECT USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Notifications: Own, Admins/Auctioneers see all
CREATE POLICY "Users view own notifications" ON notifications FOR SELECT USING (profile_id = auth.uid());
CREATE POLICY "Users update own notifications" ON notifications FOR UPDATE USING (profile_id = auth.uid());
CREATE POLICY "Admins/Auctioneers view all notifications" ON notifications FOR SELECT USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Activities: Admins/Auctioneers see all
CREATE POLICY "Admins/Auctioneers manage activities" ON activities FOR ALL USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

-- Audit Logs: Admins read only
CREATE POLICY "Admins read audit logs" ON audit_logs FOR SELECT USING (
  EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role = 'admin')
);
-- System writes to audit_logs handled by functions with SECURITY DEFINER
