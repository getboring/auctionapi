import { z } from 'zod';

/** BIDSPX Domain: User Role */
export const UserRole = {
  admin: 'admin',
  auctioneer: 'auctioneer',
  seller: 'seller',
  bidder: 'bidder',
} as const;

export const UserRoleSchema = z.nativeEnum(UserRole);
export type UserRole = z.infer<typeof UserRoleSchema>;
