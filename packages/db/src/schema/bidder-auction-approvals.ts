import { pgTable, uuid, timestamp, text, index, unique } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { bidders } from './bidders';
import { auction_events } from './auction-events';
import { profiles } from './profiles';

export const BidderAuctionApprovalSchema = z.object({
  id: z.string().uuid(),
  bidder_id: z.string().uuid(),
  auction_id: z.string().uuid(),
  approved_by: z.string().uuid(),
  approved_at: z.date(),
  notes: z.string().nullable(),
});
export type BidderAuctionApproval = z.infer<typeof BidderAuctionApprovalSchema>;

export const bidder_auction_approvals = pgTable('bidder_auction_approvals', {
  id: uuid('id').primaryKey().defaultRandom(),
  bidder_id: uuid('bidder_id').references(() => bidders.id, { onDelete: 'cascade' }).notNull(),
  auction_id: uuid('auction_id').references(() => auction_events.id, { onDelete: 'cascade' }).notNull(),
  approved_by: uuid('approved_by').references(() => profiles.id).notNull(),
  approved_at: timestamp('approved_at', { withTimezone: true }).defaultNow().notNull(),
  notes: text('notes'),
}, (table) => ({
  bidderAuctionUnique: unique('bidder_auction_approvals_bidder_id_auction_id_unique').on(table.bidder_id, table.auction_id),
  auctionIdIdx: index('bidder_auction_approvals_auction_id_idx').on(table.auction_id),
}));
