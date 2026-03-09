import { pgTable, uuid, numeric, text, timestamp, pgEnum, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { auction_events } from './auction-events';
import { bidders } from './bidders';
import { BidStatus } from '@bidspx/shared';

export const bidStatusEnum = pgEnum('bid_status', ['active', 'outbid', 'winning', 'retracted', 'canceled']);

export const BidSchema = z.object({
  id: z.string().uuid(),
  auction_id: z.string().uuid(),
  bidder_id: z.string().uuid(),
  amount: z.string(), // Decimal
  max_amount: z.string().nullable(), // Decimal (proxy/auto-bid ceiling)
  idempotency_key: z.string(),
  status: z.nativeEnum(BidStatus).default('active'),
  ip_address_hash: z.string().nullable(),
  created_at: z.date(),
  updated_at: z.date(),
});
export type Bid = z.infer<typeof BidSchema>;

export const bids = pgTable('bids', {
  id: uuid('id').primaryKey().defaultRandom(),
  auction_id: uuid('auction_id').references(() => auction_events.id).notNull(),
  bidder_id: uuid('bidder_id').references(() => bidders.id).notNull(),
  amount: numeric('amount', { precision: 14, scale: 2 }).notNull(),
  max_amount: numeric('max_amount', { precision: 14, scale: 2 }),
  idempotency_key: text('idempotency_key').unique().notNull(),
  status: bidStatusEnum('status').default('active').notNull(),
  ip_address_hash: text('ip_address_hash'),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  auctionAmountDescIdx: index('bids_auction_amount_desc_idx').on(table.auction_id, table.amount.desc()),
  bidderCreatedAtIdx: index('bids_bidder_created_at_idx').on(table.bidder_id, table.created_at),
}));
