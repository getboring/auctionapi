-- Schedule auction end checks
SELECT cron.schedule('check-ending-auctions', '30 seconds', $$ SELECT end_auctions_batch(); $$);
