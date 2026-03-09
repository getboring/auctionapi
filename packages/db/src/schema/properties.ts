import { pgTable, uuid, text, numeric, integer, timestamp, boolean, customType, index, pgEnum } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { sellers } from './sellers';
import { PropertyType, PropertySubType, SpecialListingConditions, StandardStatus, AuctionType } from '@bidspx/shared';

const customVector = customType<{ data: number[]; driverData: string }>({
  dataType() {
    return 'vector(1536)'; // 1536 dimension depends on embedding model, e.g., OpenAI ada-002
  },
  toDriver(value: number[]): string {
    return `[${value.join(',')}]`;
  },
  fromDriver(value: string): number[] {
    return value.slice(1, -1).split(',').map(Number);
  },
});

export const standardStatusEnum = pgEnum('standard_status', ['Active', 'Pending', 'Closed', 'Withdrawn', 'Canceled', 'Coming Soon', 'Delete']);
export const propertyTypeEnum = pgEnum('property_type', ['Residential', 'Land', 'Commercial Sale', 'Farm', 'Residential Income']);
export const auctionTypeEnum = pgEnum('auction_type', ['Absolute', 'MinimumBid', 'Reserve']);

export const PropertySchema = z.object({
  id: z.string().uuid(),
  seller_id: z.string().uuid(),

  // Address Group
  street_number: z.string().nullable(),
  street_name: z.string().nullable(),
  street_suffix: z.string().nullable(),
  unit_number: z.string().nullable(),
  city: z.string().nullable(),
  state_or_province: z.string().nullable(),
  postal_code: z.string().nullable(),
  county_or_parish: z.string().nullable(),
  country: z.string().nullable(),
  latitude: z.string().nullable(), // Decimal
  longitude: z.string().nullable(), // Decimal
  directions: z.string().nullable(),

  // Listing Group
  listing_key: z.string().uuid(),
  list_price: z.string().nullable(),
  original_list_price: z.string().nullable(),
  current_price: z.string().nullable(), // NEW in 2.1
  standard_status: z.nativeEnum(StandardStatus),
  property_type: z.nativeEnum(PropertyType),
  property_sub_type: z.string().nullable(), // Uses string directly due to broad enum size, maps to PropertySubType lookup
  listing_id: z.string().nullable(), // Human readable
  mls_status: z.string().nullable(),
  special_listing_conditions: z.array(z.string()).nullable(),

  // Auction Group (NEW in RESO DD 2.1)
  auction_yn: z.boolean().default(true),
  auction_date: z.date().nullable(),
  auction_start_time: z.date().nullable(), // Timestamp
  auction_type: z.nativeEnum(AuctionType).nullable(),
  auction_reserve_amount: z.string().nullable(),
  auction_license_number: z.string().max(255).nullable(),
  auction_url: z.string().url().max(8000).nullable(),

  // Structure Group
  living_area: z.string().nullable(),
  living_area_units: z.string().nullable(),
  bedrooms_total: z.number().int().nullable(),
  bathrooms_total: z.string().nullable(), // Decimal sometimes
  bathrooms_full: z.number().int().nullable(),
  bathrooms_half: z.number().int().nullable(),
  year_built: z.number().int().nullable(),
  stories_total: z.number().int().nullable(),
  garage_spaces: z.string().nullable(), // Decimal
  heating: z.array(z.string()).nullable(),
  cooling: z.array(z.string()).nullable(),
  flooring: z.array(z.string()).nullable(),
  roof: z.array(z.string()).nullable(),
  construction_materials: z.array(z.string()).nullable(),
  foundation_details: z.array(z.string()).nullable(),
  architectural_style: z.array(z.string()).nullable(),

  // Tax Group
  tax_annual_amount: z.string().nullable(),
  tax_year: z.number().int().nullable(),
  tax_legal_description: z.string().nullable(),
  parcel_number: z.string().nullable(),

  // Lot Group
  lot_size_acres: z.string().nullable(),
  lot_size_square_feet: z.string().nullable(),
  lot_features: z.array(z.string()).nullable(),
  water_source: z.array(z.string()).nullable(),
  sewer: z.array(z.string()).nullable(),
  utilities: z.array(z.string()).nullable(),

  // Identifier Group
  universal_property_id: z.string().nullable(),
  universal_parcel_id: z.string().nullable(),

  // Remarks Group
  public_remarks: z.string().nullable(),
  private_remarks: z.string().nullable(),
  showing_instructions: z.string().nullable(),

  created_at: z.date(),
  updated_at: z.date(),
  deleted_at: z.date().nullable(),
});
export type Property = z.infer<typeof PropertySchema>;
export const CreatePropertyInput = PropertySchema.omit({ id: true, created_at: true, updated_at: true, deleted_at: true });
export type CreatePropertyInput = z.infer<typeof CreatePropertyInput>;

export const properties = pgTable('properties', {
  id: uuid('id').primaryKey().defaultRandom(),
  seller_id: uuid('seller_id').references(() => sellers.id).notNull(),

  street_number: text('street_number'),
  street_name: text('street_name'),
  street_suffix: text('street_suffix'),
  unit_number: text('unit_number'),
  city: text('city'),
  state_or_province: text('state_or_province'),
  postal_code: text('postal_code'),
  county_or_parish: text('county_or_parish'),
  country: text('country'),
  latitude: numeric('latitude', { precision: 10, scale: 6 }),
  longitude: numeric('longitude', { precision: 10, scale: 6 }),
  directions: text('directions'),

  listing_key: uuid('listing_key').defaultRandom().notNull(), // As PK equivalent for RESO mapping
  list_price: numeric('list_price', { precision: 14, scale: 2 }),
  original_list_price: numeric('original_list_price', { precision: 14, scale: 2 }),
  current_price: numeric('current_price', { precision: 14, scale: 2 }),
  standard_status: standardStatusEnum('standard_status').notNull(),
  property_type: propertyTypeEnum('property_type').notNull(),
  property_sub_type: text('property_sub_type'),
  listing_id: text('listing_id'), // SPX-XXXXX
  mls_status: text('mls_status'),
  special_listing_conditions: text('special_listing_conditions').array(),

  // Auction Group
  auction_yn: boolean('auction_yn').default(true).notNull(),
  auction_date: timestamp('auction_date', { mode: 'date' }), // Date without time logically
  auction_start_time: timestamp('auction_start_time', { withTimezone: true }),
  auction_type: auctionTypeEnum('auction_type'),
  auction_reserve_amount: numeric('auction_reserve_amount', { precision: 14, scale: 2 }),
  auction_license_number: text('auction_license_number'), // Max length handled in validation, not usually hard-capped in PG unless explicit varchar
  auction_url: text('auction_url'),

  // Structure
  living_area: numeric('living_area', { precision: 14, scale: 2 }),
  living_area_units: text('living_area_units'),
  bedrooms_total: integer('bedrooms_total'),
  bathrooms_total: numeric('bathrooms_total', { precision: 4, scale: 2 }),
  bathrooms_full: integer('bathrooms_full'),
  bathrooms_half: integer('bathrooms_half'),
  year_built: integer('year_built'),
  stories_total: integer('stories_total'),
  garage_spaces: numeric('garage_spaces', { precision: 4, scale: 2 }),
  heating: text('heating').array(),
  cooling: text('cooling').array(),
  flooring: text('flooring').array(),
  roof: text('roof').array(),
  construction_materials: text('construction_materials').array(),
  foundation_details: text('foundation_details').array(),
  architectural_style: text('architectural_style').array(),

  // Tax
  tax_annual_amount: numeric('tax_annual_amount', { precision: 14, scale: 2 }),
  tax_year: integer('tax_year'),
  tax_legal_description: text('tax_legal_description'),
  parcel_number: text('parcel_number'),

  // Lot
  lot_size_acres: numeric('lot_size_acres', { precision: 14, scale: 4 }),
  lot_size_square_feet: numeric('lot_size_square_feet', { precision: 14, scale: 2 }),
  lot_features: text('lot_features').array(),
  water_source: text('water_source').array(),
  sewer: text('sewer').array(),
  utilities: text('utilities').array(),

  // Identifiers
  universal_property_id: text('universal_property_id'),
  universal_parcel_id: text('universal_parcel_id'),

  // Remarks
  public_remarks: text('public_remarks'),
  private_remarks: text('private_remarks'),
  showing_instructions: text('showing_instructions'),

  // Vector & Search
  embedding: customVector('embedding'),
  // Note: search_vector will be added via trigger in SQL directly and typed if queried

  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
  updated_at: timestamp('updated_at', { withTimezone: true }).defaultNow().notNull(),
  deleted_at: timestamp('deleted_at', { withTimezone: true }),
}, (table) => ({
  standardStatusIdx: index('properties_standard_status_idx').on(table.standard_status),
  propertyTypeIdx: index('properties_property_type_idx').on(table.property_type),
  cityStateIdx: index('properties_city_state_idx').on(table.city, table.state_or_province),
  listPriceIdx: index('properties_list_price_idx').on(table.list_price),
  auctionYnIdx: index('properties_auction_yn_idx').on(table.auction_yn),
}));
