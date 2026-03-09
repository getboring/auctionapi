import { z } from 'zod';

/** BIDSPX Domain: Settlement Status */
export const SettlementStatus = {
  pending: 'pending',
  invoiced: 'invoiced',
  earnest_received: 'earnest_received',
  paid_in_full: 'paid_in_full',
  closed: 'closed',
  disputed: 'disputed',
} as const;

export const SettlementStatusSchema = z.nativeEnum(SettlementStatus);
export type SettlementStatus = z.infer<typeof SettlementStatusSchema>;
