import { z } from 'zod';

/** RESO Data Dictionary 2.0/2.1: PropertyType Lookups */
export const PropertyType = {
  Residential: 'Residential',
  Land: 'Land',
  CommercialSale: 'Commercial Sale',
  Farm: 'Farm',
  ResidentialIncome: 'Residential Income',
} as const;

export const PropertyTypeSchema = z.nativeEnum(PropertyType);
export type PropertyType = z.infer<typeof PropertyTypeSchema>;
