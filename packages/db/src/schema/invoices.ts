import { pgTable, uuid, text, numeric, timestamp, pgEnum, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { auction_events } from './auction-events';
import { bidders } from './bidders';
import { settlements } from './settlements';
import { InvoiceStatus } from '@bidspx/shared';

export const invoiceStatusEnum = pgEnum('invoice_status', ['draft', 'sent', 'partially_paid', 'paid', 'overdue', 'void']);

export const InvoiceSchema = z.object({
  id: z.string().uuid(),
  auction_id: z.string().uuid(),
  bidder_id: z.string().uuid(),
  settlement_id: z.string().uuid(),
  invoice_number: z.string(), // Unique human-readable
  hammer_price: z.string(), // Decimal
  buyer_premium_amount: z.string(), // Decimal
  tax_amount: z.string().default('0.00'), // Decimal
  total_due: z.string(), // Decimal
  amount_paid: z.string().default('0.00'), // Decimal
  balance_due: z.string(), // Decimal
  status: z.nativeEnum(InvoiceStatus).default('draft'),
  due_date: z.date().nullable(),
  paid_at: z.date().nullable(),
  stripe_payment_intent_id: z.string().nullable(),
  notes: z.string().nullable(),
  created_at: z.date(),
  updated_at: z.date(),
});
export type Invoice = z.infer<typeof InvoiceSchema>;

export const invoices = pgTable('invoices', {
  id: uuid('id').primaryKey().defaultRandom(),
  auction_id: uuid('auction_id').references(() => auction_events.id).notNull(),
  bidder_id: uuid('bidder_id').references(() => bidders.id).notNull(),
  settlement_id: uuid('settlement_id').references(() => settlements.id).notNull(),
  invoice_number: text('invoice_number').unique().notNull(),
  hammer_price: numeric('hammer_price', { precision: 14, scale: 2 }).notNull(),
  buyer_premium_amount: numeric('buyer_premium_amount', { precision: 14, scale: 2 }).notNull(),
  tax_amount: numeric('tax_amount', { precision: 14, scale: 2 }).default('0.00').notNull(),
  total_due: numeric('total_due', { precision: 14, scale: 2 }).notNull(),
  amount_paid: numeric('amount_paid', { precision: 14, scale: 2 }).default('0.00').notNull(),
  balance_due: numeric('balance_due', { precision: 14, scale: 2 }).notNull(),
  status: invoiceStatusEnum('status').default('draft').notNull(),
  due_date: timestamp('due_date', { withTimezone: true }),
  paid_at: timestamp('paid_at', { withTimezone: true }),
  stripe_payment_intent_id: text('stripe_payment_intent_id'),
  notes: text('notes'),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  auctionIdx: index('invoices_auction_idx').on(table.auction_id),
  bidderIdx: index('invoices_bidder_idx').on(table.bidder_id),
  statusIdx: index('invoices_status_idx').on(table.status),
}));
