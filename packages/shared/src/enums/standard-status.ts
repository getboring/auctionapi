import { z } from 'zod';

/** RESO Data Dictionary 2.0/2.1: StandardStatus Lookups */
export const StandardStatus = {
  Active: 'Active',
  Pending: 'Pending',
  Closed: 'Closed',
  Withdrawn: 'Withdrawn',
  Canceled: 'Canceled',
  ComingSoon: 'Coming Soon',
  Delete: 'Delete',
} as const;

export const StandardStatusSchema = z.nativeEnum(StandardStatus);
export type StandardStatus = z.infer<typeof StandardStatusSchema>;
