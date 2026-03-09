import { pgTable, uuid, numeric, text, timestamp, pgEnum, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { auction_events } from './auction-events';
import { bids } from './bids';


export const settlementStatusEnum = pgEnum('settlement_status', ['pending', 'invoiced', 'earnest_received', 'paid_in_full', 'closed', 'disputed']);

export const SettlementSchema = z.object({
  id: z.string().uuid(),
  auction_id: z.string().uuid(),
  winning_bid_id: z.string().uuid(),
  hammer_price: z.string(), // Decimal
  buyer_premium_amount: z.string(), // Decimal
  total_due: z.string(), // Decimal
  earnest_money_applied: z.string().default('0.00'), // Decimal
  balance_due: z.string(), // Decimal
  seller_payout_amount: z.string(), // Decimal
  commission_amount: z.string(), // Decimal
  status: z.enum(['pending', 'invoiced', 'earnest_received', 'paid_in_full', 'closed', 'disputed']).default('pending'),
  closing_date: z.date().nullable(), // Date logically
  title_company: z.string().nullable(),
  escrow_number: z.string().nullable(),
  stripe_transfer_id: z.string().nullable(),
  created_at: z.date(),
  updated_at: z.date(),
});
export type Settlement = z.infer<typeof SettlementSchema>;

export const settlements = pgTable('settlements', {
  id: uuid('id').primaryKey().defaultRandom(),
  auction_id: uuid('auction_id').references(() => auction_events.id).notNull(),
  winning_bid_id: uuid('winning_bid_id').references(() => bids.id).notNull(),
  hammer_price: numeric('hammer_price', { precision: 14, scale: 2 }).notNull(),
  buyer_premium_amount: numeric('buyer_premium_amount', { precision: 14, scale: 2 }).notNull(),
  total_due: numeric('total_due', { precision: 14, scale: 2 }).notNull(),
  earnest_money_applied: numeric('earnest_money_applied', { precision: 14, scale: 2 }).default('0.00').notNull(),
  balance_due: numeric('balance_due', { precision: 14, scale: 2 }).notNull(),
  seller_payout_amount: numeric('seller_payout_amount', { precision: 14, scale: 2 }).notNull(),
  commission_amount: numeric('commission_amount', { precision: 14, scale: 2 }).notNull(),
  status: settlementStatusEnum('status').default('pending').notNull(),
  closing_date: timestamp('closing_date', { mode: 'date' }),
  title_company: text('title_company'),
  escrow_number: text('escrow_number'),
  stripe_transfer_id: text('stripe_transfer_id'),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  auctionIdx: index('settlements_auction_idx').on(table.auction_id),
  statusIdx: index('settlements_status_idx').on(table.status),
}));
