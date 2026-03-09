import { z } from 'zod';

/** BIDSPX Domain: Seller Type */
export const SellerType = {
  individual: 'individual',
  estate: 'estate',
  bank: 'bank',
  corporate: 'corporate',
  government: 'government',
} as const;

export const SellerTypeSchema = z.nativeEnum(SellerType);
export type SellerType = z.infer<typeof SellerTypeSchema>;
