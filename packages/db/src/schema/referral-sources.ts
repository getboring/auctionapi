import { pgTable, uuid, text, numeric, integer, timestamp, pgEnum } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { ReferralSourceType } from '@bidspx/shared';

export const referralSourceTypeEnum = pgEnum('referral_source_type', [
  'attorney', 'cpa', 'financial_advisor', 'funeral_home', 'realtor', 'bank_trust', 'direct', 'other'
]);
export const referralSourceStatusEnum = pgEnum('referral_source_status', ['prospect', 'active', 'inactive', 'vip']);

export const ReferralSourceSchema = z.object({
  id: z.string().uuid(),
  type: z.nativeEnum(ReferralSourceType),
  status: z.enum(['prospect', 'active', 'inactive', 'vip']).default('prospect'),
  name: z.string(),
  company: z.string().nullable(),
  title: z.string().nullable(),
  email: z.string().email().nullable(),
  phone: z.string().nullable(),
  address_street: z.string().nullable(),
  address_city: z.string().nullable(),
  address_state: z.string().default('TN'),
  address_zip: z.string().nullable(),
  source: z.string().nullable(),
  notes: z.string().nullable(),
  lifetime_referrals: z.number().int().default(0),
  lifetime_revenue: z.string().default('0'), // Decimal as string to preserve precision
  last_contact_at: z.date().nullable(),
  created_at: z.date(),
  updated_at: z.date(),
});
export type ReferralSource = z.infer<typeof ReferralSourceSchema>;

export const referral_sources = pgTable('referral_sources', {
  id: uuid('id').primaryKey().defaultRandom(),
  type: referralSourceTypeEnum('type').notNull(),
  status: referralSourceStatusEnum('status').default('prospect').notNull(),
  name: text('name').notNull(),
  company: text('company'),
  title: text('title'),
  email: text('email'),
  phone: text('phone'),
  address_street: text('address_street'),
  address_city: text('address_city'),
  address_state: text('address_state').default('TN').notNull(),
  address_zip: text('address_zip'),
  source: text('source'),
  notes: text('notes'),
  lifetime_referrals: integer('lifetime_referrals').default(0).notNull(),
  lifetime_revenue: numeric('lifetime_revenue', { precision: 14, scale: 2 }).default('0').notNull(),
  last_contact_at: timestamp('last_contact_at', { withTimezone: true }),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
});
