import { z } from 'zod';

/** RESO Data Dictionary 2.0/2.1: PropertySubType Lookups */
export const PropertySubType = {
  SingleFamilyResidence: 'Single Family Residence',
  Townhouse: 'Townhouse',
  Condominium: 'Condominium',
  ManufacturedHome: 'Manufactured Home',
  Apartment: 'Apartment',
} as const;

export const PropertySubTypeSchema = z.nativeEnum(PropertySubType);
export type PropertySubType = z.infer<typeof PropertySubTypeSchema>;
