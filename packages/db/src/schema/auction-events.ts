import { pgTable, uuid, timestamp, text, integer, numeric, pgEnum, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { properties } from './properties';
import { profiles } from './profiles';
import { AuctionStatus, AuctionTrack } from '@bidspx/shared';

export const auctionStatusEnum = pgEnum('auction_status', ['draft', 'scheduled', 'live', 'ended', 'canceled', 'settled']);
export const auctionTrackEnum = pgEnum('auction_track', ['CashExpress21', 'HomeReady45']);

export const AuctionEventSchema = z.object({
  id: z.string().uuid(),
  property_id: z.string().uuid(),
  auction_type: z.literal('timed_online').default('timed_online'),
  starts_at: z.date(),
  ends_at: z.date(),
  status: z.nativeEnum(AuctionStatus).default('draft'),
  soft_close_buffer_seconds: z.number().int().default(120),
  max_extensions: z.number().int().default(10),
  extension_count: z.number().int().default(0),
  hard_close_at: z.date(),
  buyer_premium_pct: z.string().default('10.00'), // Decimal
  auction_track: z.nativeEnum(AuctionTrack),
  reserve_price: z.string().nullable(), // Decimal
  starting_bid: z.string(), // Decimal
  bid_increment: z.string().nullable(), // Null means use tier system
  earnest_money_amount: z.string().default('2000.00'), // Decimal
  created_by: z.string().uuid(),
  created_at: z.date(),
  updated_at: z.date(),
});
export type AuctionEvent = z.infer<typeof AuctionEventSchema>;

export const auction_events = pgTable('auction_events', {
  id: uuid('id').primaryKey().defaultRandom(),
  property_id: uuid('property_id').references(() => properties.id).notNull(),
  auction_type: text('auction_type').default('timed_online').notNull(),
  starts_at: timestamp('starts_at', { withTimezone: true }).notNull(),
  ends_at: timestamp('ends_at', { withTimezone: true }).notNull(),
  status: auctionStatusEnum('status').default('draft').notNull(),
  soft_close_buffer_seconds: integer('soft_close_buffer_seconds').default(120).notNull(),
  max_extensions: integer('max_extensions').default(10).notNull(),
  extension_count: integer('extension_count').default(0).notNull(),
  hard_close_at: timestamp('hard_close_at', { withTimezone: true }).notNull(),
  buyer_premium_pct: numeric('buyer_premium_pct', { precision: 5, scale: 2 }).default('10.00').notNull(),
  auction_track: auctionTrackEnum('auction_track').notNull(),
  reserve_price: numeric('reserve_price', { precision: 14, scale: 2 }),
  starting_bid: numeric('starting_bid', { precision: 14, scale: 2 }).notNull(),
  bid_increment: numeric('bid_increment', { precision: 14, scale: 2 }),
  earnest_money_amount: numeric('earnest_money_amount', { precision: 14, scale: 2 }).default('2000.00').notNull(),
  created_by: uuid('created_by').references(() => profiles.id).notNull(),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  statusEndsAtIdx: index('auction_events_status_ends_at_idx').on(table.status, table.ends_at),
  propertyIdIdx: index('auction_events_property_id_idx').on(table.property_id),
  createdByIdx: index('auction_events_created_by_idx').on(table.created_by),
}));
