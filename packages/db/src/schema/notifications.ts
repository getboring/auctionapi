import { pgTable, uuid, text, timestamp, pgEnum, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { profiles } from './profiles';
import { NotificationType } from '@bidspx/shared';

export const notificationTypeEnum = pgEnum('notification_type', ['outbid', 'auction_won', 'auction_lost', 'payment_due', 'auction_starting', 'auction_ending', 'bid_confirmed', 'new_auction', 'seller_update']);
export const notificationEntityTypeEnum = pgEnum('notification_entity_type', ['auction', 'bid', 'settlement', 'property']);

export const NotificationSchema = z.object({
  id: z.string().uuid(),
  profile_id: z.string().uuid(),
  type: z.nativeEnum(NotificationType),
  title: z.string(),
  body: z.string(),
  entity_type: z.enum(['auction', 'bid', 'settlement', 'property']),
  entity_id: z.string().uuid(),
  read_at: z.date().nullable(),
  created_at: z.date(),
});
export type Notification = z.infer<typeof NotificationSchema>;

export const notifications = pgTable('notifications', {
  id: uuid('id').primaryKey().defaultRandom(),
  profile_id: uuid('profile_id').references(() => profiles.id, { onDelete: 'cascade' }).notNull(),
  type: notificationTypeEnum('type').notNull(),
  title: text('title').notNull(),
  body: text('body').notNull(),
  entity_type: notificationEntityTypeEnum('entity_type').notNull(),
  entity_id: uuid('entity_id').notNull(), // Conceptual FK
  read_at: timestamp('read_at', { withTimezone: true }),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  profileReadAtIdx: index('notifications_profile_read_at_idx').on(table.profile_id, table.read_at),
  createdAtDescIdx: index('notifications_created_at_desc_idx').on(table.created_at.desc()),
}));
