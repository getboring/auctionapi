import { z } from 'zod';

/** BIDSPX Domain: Seller Status */
export const SellerStatus = {
  lead: 'lead',
  onboarding: 'onboarding',
  active: 'active',
  inactive: 'inactive',
} as const;

export const SellerStatusSchema = z.nativeEnum(SellerStatus);
export type SellerStatus = z.infer<typeof SellerStatusSchema>;
