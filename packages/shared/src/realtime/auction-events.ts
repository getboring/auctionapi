import { z } from 'zod';
import { AuctionStatusSchema, NotificationTypeSchema } from '../enums/index';

/** Broadcast on channel `auction:{id}:bids` after every successful bid */
export const BidPlacedPayloadSchema = z.object({
  auction_id: z.string().uuid(),
  new_high_bid: z.number(),
  bid_count: z.number().int(),
  bidder_display_name: z.string(), // anonymized — NOT the bidder ID
  auction_extended: z.boolean(),
  new_ends_at: z.string().datetime().nullable(),
});
export type BidPlacedPayload = z.infer<typeof BidPlacedPayloadSchema>;

/** Broadcast on channel `auction:{id}:status` on state changes */
export const AuctionStatusChangePayloadSchema = z.object({
  auction_id: z.string().uuid(),
  old_status: AuctionStatusSchema,
  new_status: AuctionStatusSchema,
  winner_display_name: z.string().optional(),
  final_price: z.number().optional(),
});
export type AuctionStatusChangePayload = z.infer<typeof AuctionStatusChangePayloadSchema>;

/** Private channel `user:{id}:notifications` */
export const UserNotificationPayloadSchema = z.object({
  notification_id: z.string().uuid(),
  type: NotificationTypeSchema,
  title: z.string(),
  body: z.string(),
  entity_type: z.string(),
  entity_id: z.string().uuid(),
});
export type UserNotificationPayload = z.infer<typeof UserNotificationPayloadSchema>;

/** Presence channel `auction:{id}:presence` */
export const AuctionPresenceSchema = z.object({
  user_id: z.string().uuid(),
  display_name: z.string(),
  joined_at: z.string().datetime(),
});
export type AuctionPresence = z.infer<typeof AuctionPresenceSchema>;
