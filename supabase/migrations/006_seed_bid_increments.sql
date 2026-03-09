-- Default bid increment tiers
INSERT INTO bid_increments (auction_id, price_floor, increment_amount) VALUES
(NULL, 0.00, 10.00),
(NULL, 100.00, 25.00),
(NULL, 500.00, 50.00),
(NULL, 1000.00, 100.00),
(NULL, 5000.00, 250.00),
(NULL, 25000.00, 500.00),
(NULL, 100000.00, 1000.00),
(NULL, 500000.00, 5000.00);
