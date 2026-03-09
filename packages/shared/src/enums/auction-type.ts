import { z } from 'zod';

/** RESO Data Dictionary 2.1: AuctionType Lookups (added October 2024) */
export const AuctionType = {
  Absolute: 'Absolute',
  MinimumBid: 'MinimumBid',
  Reserve: 'Reserve',
} as const;

export const AuctionTypeSchema = z.nativeEnum(AuctionType);
export type AuctionType = z.infer<typeof AuctionTypeSchema>;
