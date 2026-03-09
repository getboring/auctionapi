import { z } from 'zod';

/** RESO Data Dictionary 2.0/2.1: SpecialListingConditions Lookups */
export const SpecialListingConditions = {
  Standard: 'Standard',
  Auction: 'Auction',
  ProbateListing: 'ProbateListing',
  RealEstateOwned: 'RealEstateOwned',
  ShortSale: 'ShortSale',
  Trust: 'Trust',
} as const;

export const SpecialListingConditionsSchema = z.nativeEnum(SpecialListingConditions);
export type SpecialListingConditions = z.infer<typeof SpecialListingConditionsSchema>;
