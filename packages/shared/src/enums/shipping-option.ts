import { z } from 'zod';

/** BIDSPX Domain: Shipping Option */
export const ShippingOption = {
  pickup_only: 'pickup_only',
  freight: 'freight',
  standard: 'standard',
} as const;

export const ShippingOptionSchema = z.nativeEnum(ShippingOption);
export type ShippingOption = z.infer<typeof ShippingOptionSchema>;
