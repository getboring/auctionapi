import { z } from 'zod';

export const PlaceBidResultSchema = z.object({
  success: z.boolean(),
  bid_id: z.string().uuid().optional(),
  new_high_bid: z.number().optional(),
  auction_extended: z.boolean().optional(),
  new_ends_at: z.string().datetime().optional(),
  error: z.string().optional(),
});
export type PlaceBidResult = z.infer<typeof PlaceBidResultSchema>;

export const CalculateSettlementResultSchema = z.void();
export type CalculateSettlementResult = z.infer<typeof CalculateSettlementResultSchema>;

export const EndAuctionResultSchema = z.void();
export type EndAuctionResult = z.infer<typeof EndAuctionResultSchema>;

export const EndAuctionsBatchResultSchema = z.void();
export type EndAuctionsBatchResult = z.infer<typeof EndAuctionsBatchResultSchema>;

export const GetNextMinimumBidResultSchema = z.number();
export type GetNextMinimumBidResult = z.infer<typeof GetNextMinimumBidResultSchema>;

export const ApproveBidderForAuctionResultSchema = z.void();
export type ApproveBidderForAuctionResult = z.infer<typeof ApproveBidderForAuctionResultSchema>;
