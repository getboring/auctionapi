export const channels = {
  auctionBids: (id: string) => `auction:${id}:bids`,
  auctionStatus: (id: string) => `auction:${id}:status`,
  auctionPresence: (id: string) => `auction:${id}:presence`,
  userNotifications: (id: string) => `user:${id}:notifications`,
} as const;
