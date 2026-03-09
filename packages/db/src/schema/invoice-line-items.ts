import { pgTable, uuid, text, numeric, integer, timestamp, pgEnum } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { invoices } from './invoices';
import { lots } from './lots';
import { InvoiceLineType } from '@bidspx/shared';

export const invoiceLineTypeEnum = pgEnum('invoice_line_type', ['hammer_price', 'buyer_premium', 'tax', 'fee', 'adjustment', 'credit']);

export const InvoiceLineItemSchema = z.object({
  id: z.string().uuid(),
  invoice_id: z.string().uuid(),
  lot_id: z.string().uuid().nullable(),
  description: z.string(),
  amount: z.string(), // Decimal
  line_type: z.nativeEnum(InvoiceLineType),
  sort_order: z.number().int().default(0),
  created_at: z.date(),
});
export type InvoiceLineItem = z.infer<typeof InvoiceLineItemSchema>;

export const invoice_line_items = pgTable('invoice_line_items', {
  id: uuid('id').primaryKey().defaultRandom(),
  invoice_id: uuid('invoice_id').references(() => invoices.id, { onDelete: 'cascade' }).notNull(),
  lot_id: uuid('lot_id').references(() => lots.id),
  description: text('description').notNull(),
  amount: numeric('amount', { precision: 14, scale: 2 }).notNull(),
  line_type: invoiceLineTypeEnum('line_type').notNull(),
  sort_order: integer('sort_order').default(0).notNull(),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
});
