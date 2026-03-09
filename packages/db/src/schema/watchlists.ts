import { pgTable, uuid, boolean, timestamp, unique, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { profiles } from './profiles';
import { auction_events } from './auction-events';
import { properties } from './properties';

export const WatchlistSchema = z.object({
  id: z.string().uuid(),
  profile_id: z.string().uuid(),
  auction_id: z.string().uuid().nullable(),
  property_id: z.string().uuid().nullable(),
  notify_on_bid: z.boolean().default(true),
  notify_on_ending: z.boolean().default(true),
  created_at: z.date(),
});
export type Watchlist = z.infer<typeof WatchlistSchema>;

export const watchlists = pgTable('watchlists', {
  id: uuid('id').primaryKey().defaultRandom(),
  profile_id: uuid('profile_id').references(() => profiles.id, { onDelete: 'cascade' }).notNull(),
  auction_id: uuid('auction_id').references(() => auction_events.id, { onDelete: 'cascade' }),
  property_id: uuid('property_id').references(() => properties.id, { onDelete: 'cascade' }),
  notify_on_bid: boolean('notify_on_bid').default(true).notNull(),
  notify_on_ending: boolean('notify_on_ending').default(true).notNull(),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  profileAuctionUnique: unique('watchlists_profile_id_auction_id_unique').on(table.profile_id, table.auction_id).nullsNotDistinct(),
  profilePropertyUnique: unique('watchlists_profile_id_property_id_unique').on(table.profile_id, table.property_id).nullsNotDistinct(),
}));
