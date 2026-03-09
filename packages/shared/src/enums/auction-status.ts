import { z } from 'zod';

/** BIDSPX Domain: Auction Status */
export const AuctionStatus = {
  draft: 'draft',
  scheduled: 'scheduled',
  live: 'live',
  ended: 'ended',
  canceled: 'canceled',
  settled: 'settled',
} as const;

export const AuctionStatusSchema = z.nativeEnum(AuctionStatus);
export type AuctionStatus = z.infer<typeof AuctionStatusSchema>;
