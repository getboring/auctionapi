import { z } from 'zod';

/** BIDSPX Domain: Notification Type */
export const NotificationType = {
  outbid: 'outbid',
  auction_won: 'auction_won',
  auction_lost: 'auction_lost',
  payment_due: 'payment_due',
  auction_starting: 'auction_starting',
  auction_ending: 'auction_ending',
  bid_confirmed: 'bid_confirmed',
  new_auction: 'new_auction',
  seller_update: 'seller_update',
} as const;

export const NotificationTypeSchema = z.nativeEnum(NotificationType);
export type NotificationType = z.infer<typeof NotificationTypeSchema>;
