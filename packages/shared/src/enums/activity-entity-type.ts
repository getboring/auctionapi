import { z } from 'zod';

/** BIDSPX Domain: Activity Entity Type */
export const ActivityEntityType = {
  property: 'property',
  auction: 'auction',
  seller: 'seller',
  bidder: 'bidder',
  referral_source: 'referral_source',
} as const;

export const ActivityEntityTypeSchema = z.nativeEnum(ActivityEntityType);
export type ActivityEntityType = z.infer<typeof ActivityEntityTypeSchema>;
