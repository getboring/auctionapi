import { pgTable, uuid, text, jsonb, timestamp, pgEnum } from 'drizzle-orm/pg-core';
import { z } from 'zod';

export const actorTypeEnum = pgEnum('actor_type', ['human', 'system', 'ai']);

export const AuditLogSchema = z.object({
  id: z.string().uuid(),
  actor_type: z.enum(['human', 'system', 'ai']),
  actor_id: z.string().nullable(), // Null for system or depending on context
  action: z.string(),
  entity_type: z.string(),
  entity_id: z.string().nullable(),
  payload: z.any().nullable(),
  ip_address: z.string().nullable(),
  created_at: z.date(),
});
export type AuditLog = z.infer<typeof AuditLogSchema>;

export const audit_logs = pgTable('audit_logs', {
  id: uuid('id').primaryKey().defaultRandom(),
  actor_type: actorTypeEnum('actor_type').notNull(),
  actor_id: text('actor_id'), // Text to handle UUIDs or system IDs
  action: text('action').notNull(),
  entity_type: text('entity_type').notNull(),
  entity_id: text('entity_id'),
  payload: jsonb('payload'),
  ip_address: text('ip_address'),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
});
