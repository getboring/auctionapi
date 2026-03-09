import { z } from 'zod';

/** BIDSPX Domain: Bidder Status */
export const BidderStatus = {
  pending: 'pending',
  approved: 'approved',
  suspended: 'suspended',
} as const;

export const BidderStatusSchema = z.nativeEnum(BidderStatus);
export type BidderStatus = z.infer<typeof BidderStatusSchema>;
