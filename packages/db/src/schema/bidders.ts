import { pgTable, uuid, text, numeric, timestamp, pgEnum } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { profiles } from './profiles';
import { BidderStatus, VerificationMethod } from '@bidspx/shared';

export const bidderStatusEnum = pgEnum('bidder_status', ['pending', 'approved', 'suspended']);
export const verificationMethodEnum = pgEnum('verification_method', ['id', 'bank_letter', 'deposit']);

export const BidderSchema = z.object({
  id: z.string().uuid(),
  profile_id: z.string().uuid(),
  bidder_number: z.string(),
  status: z.nativeEnum(BidderStatus).default('pending'),
  verification_method: z.nativeEnum(VerificationMethod).nullable(),
  deposit_amount: z.string().nullable(), // Decimal
  created_at: z.date(),
  updated_at: z.date(),
});
export type Bidder = z.infer<typeof BidderSchema>;

export const bidders = pgTable('bidders', {
  id: uuid('id').primaryKey().defaultRandom(),
  profile_id: uuid('profile_id').references(() => profiles.id).notNull(),
  bidder_number: text('bidder_number').unique().notNull(),
  status: bidderStatusEnum('status').default('pending').notNull(),
  verification_method: verificationMethodEnum('verification_method'),
  deposit_amount: numeric('deposit_amount', { precision: 14, scale: 2 }),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
});
