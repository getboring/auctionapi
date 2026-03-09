import { z } from 'zod';

/** BIDSPX Domain: Bid Status */
export const BidStatus = {
  active: 'active',
  outbid: 'outbid',
  winning: 'winning',
  retracted: 'retracted',
  canceled: 'canceled',
} as const;

export const BidStatusSchema = z.nativeEnum(BidStatus);
export type BidStatus = z.infer<typeof BidStatusSchema>;
