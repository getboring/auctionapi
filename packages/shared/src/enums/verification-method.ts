import { z } from 'zod';

/** BIDSPX Domain: Verification Method */
export const VerificationMethod = {
  id: 'id',
  bank_letter: 'bank_letter',
  deposit: 'deposit',
} as const;

export const VerificationMethodSchema = z.nativeEnum(VerificationMethod);
export type VerificationMethod = z.infer<typeof VerificationMethodSchema>;
