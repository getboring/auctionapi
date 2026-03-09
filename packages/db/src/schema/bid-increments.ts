import { pgTable, uuid, numeric, timestamp, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { auction_events } from './auction-events';

export const BidIncrementSchema = z.object({
  id: z.string().uuid(),
  auction_id: z.string().uuid().nullable(), // null means global default
  price_floor: z.string(), // Decimal
  increment_amount: z.string(), // Decimal
  created_at: z.date(),
});
export type BidIncrement = z.infer<typeof BidIncrementSchema>;

export const bid_increments = pgTable('bid_increments', {
  id: uuid('id').primaryKey().defaultRandom(),
  auction_id: uuid('auction_id').references(() => auction_events.id, { onDelete: 'cascade' }),
  price_floor: numeric('price_floor', { precision: 14, scale: 2 }).notNull(),
  increment_amount: numeric('increment_amount', { precision: 14, scale: 2 }).notNull(),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  auctionPriceFloorIdx: index('bid_increments_auction_price_floor_idx').on(table.auction_id, table.price_floor),
}));
