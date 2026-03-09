import { pgTable, uuid, text, jsonb, timestamp, pgEnum } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { profiles } from './profiles';
import { ActivityEntityType } from '@bidspx/shared';

export const activityEntityTypeEnum = pgEnum('activity_entity_type', ['property', 'auction', 'seller', 'bidder', 'referral_source']);

export const ActivitySchema = z.object({
  id: z.string().uuid(),
  actor_id: z.string().uuid(),
  entity_type: z.nativeEnum(ActivityEntityType),
  entity_id: z.string().uuid(),
  action: z.string(),
  details: z.any().nullable(),
  created_at: z.date(),
});
export type Activity = z.infer<typeof ActivitySchema>;

export const activities = pgTable('activities', {
  id: uuid('id').primaryKey().defaultRandom(),
  actor_id: uuid('actor_id').references(() => profiles.id).notNull(),
  entity_type: activityEntityTypeEnum('entity_type').notNull(),
  entity_id: uuid('entity_id').notNull(), // Conceptual FK
  action: text('action').notNull(),
  details: jsonb('details'),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
});
