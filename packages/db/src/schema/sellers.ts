import { pgTable, uuid, text, numeric, jsonb, timestamp, pgEnum, index } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { profiles } from './profiles';
import { referral_sources } from './referral-sources';
import { SellerType, SellerStatus, OnboardingStep } from '@bidspx/shared';

export const sellerTypeEnum = pgEnum('seller_type', ['individual', 'estate', 'bank', 'corporate', 'government']);
export const sellerStatusEnum = pgEnum('seller_status', ['lead', 'onboarding', 'active', 'inactive']);
export const onboardingStepEnum = pgEnum('onboarding_step', ['contact', 'agreement', 'inventory', 'photos', 'complete']);

export const SellerSchema = z.object({
  id: z.string().uuid(),
  profile_id: z.string().uuid(),
  type: z.nativeEnum(SellerType),
  status: z.nativeEnum(SellerStatus).default('lead'),
  onboarding_step: z.nativeEnum(OnboardingStep).default('contact'),
  company_name: z.string().nullable(),
  contact_name: z.string().nullable(),
  email: z.string().email().nullable(),
  phone: z.string().nullable(),
  address_street: z.string().nullable(),
  address_city: z.string().nullable(),
  address_state: z.string().default('TN'),
  address_zip: z.string().nullable(),
  commission_rate: z.string().nullable(), // Decimal representation
  consignment_date: z.date().nullable(),
  referral_source_id: z.string().uuid().nullable(),
  notes: z.string().nullable(),
  metadata: z.any().nullable(), // Map to jsonb
  stripe_connect_account_id: z.string().nullable(),
  created_at: z.date(),
  updated_at: z.date(),
});
export type Seller = z.infer<typeof SellerSchema>;

export const sellers = pgTable('sellers', {
  id: uuid('id').primaryKey().defaultRandom(),
  profile_id: uuid('profile_id').references(() => profiles.id, { onDelete: 'cascade' }).notNull(),
  type: sellerTypeEnum('type').notNull(),
  status: sellerStatusEnum('status').default('lead').notNull(),
  onboarding_step: onboardingStepEnum('onboarding_step').default('contact').notNull(),
  company_name: text('company_name'),
  contact_name: text('contact_name'),
  email: text('email'),
  phone: text('phone'),
  address_street: text('address_street'),
  address_city: text('address_city'),
  address_state: text('address_state').default('TN').notNull(),
  address_zip: text('address_zip'),
  commission_rate: numeric('commission_rate', { precision: 5, scale: 2 }), // Percentage (e.g., 15.00)
  consignment_date: timestamp('consignment_date', { withTimezone: true }),
  referral_source_id: uuid('referral_source_id').references(() => referral_sources.id),
  notes: text('notes'),
  metadata: jsonb('metadata'),
  stripe_connect_account_id: text('stripe_connect_account_id'),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
}, (table) => ({
  statusTypeIdx: index('sellers_status_type_idx').on(table.status, table.type),
  referralSourceIdx: index('sellers_referral_source_idx').on(table.referral_source_id),
  onboardingStepIdx: index('sellers_onboarding_step_idx').on(table.onboarding_step),
}));
