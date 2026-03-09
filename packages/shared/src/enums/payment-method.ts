import { z } from 'zod';

/** BIDSPX Domain: Payment Method */
export const PaymentMethod = {
  cash: 'cash',
  check: 'check',
  wire: 'wire',
  credit_card: 'credit_card',
  escrow: 'escrow',
} as const;

export const PaymentMethodSchema = z.nativeEnum(PaymentMethod);
export type PaymentMethod = z.infer<typeof PaymentMethodSchema>;
