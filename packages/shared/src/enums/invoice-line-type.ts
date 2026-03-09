import { z } from 'zod';

/** BIDSPX Domain: Invoice Line Type */
export const InvoiceLineType = {
  hammer_price: 'hammer_price',
  buyer_premium: 'buyer_premium',
  tax: 'tax',
  fee: 'fee',
  adjustment: 'adjustment',
  credit: 'credit',
} as const;

export const InvoiceLineTypeSchema = z.nativeEnum(InvoiceLineType);
export type InvoiceLineType = z.infer<typeof InvoiceLineTypeSchema>;
