import { pgTable, uuid, text, boolean, timestamp, pgEnum } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { UserRole } from '@bidspx/shared';

export const userRoleEnum = pgEnum('user_role', ['admin', 'auctioneer', 'seller', 'bidder']);

export const ProfileSchema = z.object({
  id: z.string().uuid(),
  full_name: z.string().nullable(),
  display_name: z.string().nullable(),
  email: z.string().email(),
  phone: z.string().nullable(),
  avatar_url: z.string().url().nullable(),
  role: z.nativeEnum(UserRole).default('bidder'),
  is_active: z.boolean().default(true),
  created_at: z.date(),
  updated_at: z.date(),
});
export type Profile = z.infer<typeof ProfileSchema>;

export const profiles = pgTable('profiles', {
  id: uuid('id').primaryKey(),
  full_name: text('full_name'),
  display_name: text('display_name'),
  email: text('email').notNull(),
  phone: text('phone'),
  avatar_url: text('avatar_url'),
  role: userRoleEnum('role').default('bidder').notNull(),
  is_active: boolean('is_active').default(true).notNull(),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
});
