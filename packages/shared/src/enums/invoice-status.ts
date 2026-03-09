import { z } from 'zod';

/** BIDSPX Domain: Invoice Status */
export const InvoiceStatus = {
  draft: 'draft',
  sent: 'sent',
  partially_paid: 'partially_paid',
  paid: 'paid',
  overdue: 'overdue',
  void: 'void',
} as const;

export const InvoiceStatusSchema = z.nativeEnum(InvoiceStatus);
export type InvoiceStatus = z.infer<typeof InvoiceStatusSchema>;
