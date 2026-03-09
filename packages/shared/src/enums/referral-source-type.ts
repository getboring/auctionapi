import { z } from 'zod';

/** BIDSPX Domain: Referral Source Type */
export const ReferralSourceType = {
  attorney: 'attorney',
  cpa: 'cpa',
  financial_advisor: 'financial_advisor',
  funeral_home: 'funeral_home',
  realtor: 'realtor',
  bank_trust: 'bank_trust',
  direct: 'direct',
  other: 'other',
} as const;

export const ReferralSourceTypeSchema = z.nativeEnum(ReferralSourceType);
export type ReferralSourceType = z.infer<typeof ReferralSourceTypeSchema>;
