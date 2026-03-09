import { pgTable, uuid, text, numeric, integer, timestamp, pgEnum, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { auction_events } from './auction-events';
import { properties } from './properties';
import { LotCondition, ShippingOption } from '@bidspx/shared';

export const lotConditionEnum = pgEnum('lot_condition', ['excellent', 'good', 'fair', 'as_is']);
export const shippingOptionEnum = pgEnum('shipping_option', ['pickup_only', 'freight', 'standard']);

export const LotSchema = z.object({
  id: z.string().uuid(),
  auction_id: z.string().uuid(),
  property_id: z.string().uuid().nullable(),
  lot_number: z.string(),
  title: z.string().max(80),
  description: z.string().nullable(),
  category: z.string().nullable(),
  starting_bid: z.string(), // Decimal
  reserve_price: z.string().nullable(), // Decimal
  buy_now_price: z.string().nullable(), // Decimal
  condition: z.nativeEnum(LotCondition).nullable(),
  dimensions: z.string().nullable(),
  shipping_option: z.nativeEnum(ShippingOption).nullable(),
  sort_order: z.number().int().default(0),
  created_at: z.date(),
  updated_at: z.date(),
});
export type Lot = z.infer<typeof LotSchema>;

export const lots = pgTable('lots', {
  id: uuid('id').primaryKey().defaultRandom(),
  auction_id: uuid('auction_id').references(() => auction_events.id, { onDelete: 'cascade' }).notNull(),
  property_id: uuid('property_id').references(() => properties.id),
  lot_number: text('lot_number').notNull(),
  title: text('title').notNull(),
  description: text('description'),
  category: text('category'),
  starting_bid: numeric('starting_bid', { precision: 14, scale: 2 }).notNull(),
  reserve_price: numeric('reserve_price', { precision: 14, scale: 2 }),
  buy_now_price: numeric('buy_now_price', { precision: 14, scale: 2 }),
  condition: lotConditionEnum('condition'),
  dimensions: text('dimensions'),
  shipping_option: shippingOptionEnum('shipping_option'),
  sort_order: integer('sort_order').default(0).notNull(),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  auctionSortOrderIdx: index('lots_auction_sort_order_idx').on(table.auction_id, table.sort_order),
}));
