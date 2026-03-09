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
