import { z } from 'zod';

/** BIDSPX Domain: Lot Condition */
export const LotCondition = {
  excellent: 'excellent',
  good: 'good',
  fair: 'fair',
  as_is: 'as_is',
} as const;

export const LotConditionSchema = z.nativeEnum(LotCondition);
export type LotCondition = z.infer<typeof LotConditionSchema>;
