import { z } from 'zod';

/** BIDSPX Domain: Auction Track */
export const AuctionTrack = {
  CashExpress21: 'CashExpress21',
  HomeReady45: 'HomeReady45',
} as const;

export const AuctionTrackSchema = z.nativeEnum(AuctionTrack);
export type AuctionTrack = z.infer<typeof AuctionTrackSchema>;
