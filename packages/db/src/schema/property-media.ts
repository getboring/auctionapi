import { pgTable, uuid, text, integer, boolean, timestamp, pgEnum } from 'drizzle-orm/pg-core';
import { z } from 'zod';
import { properties } from './properties';
import { lots } from './lots';
import { MediaType } from '@bidspx/shared';

export const mediaTypeEnum = pgEnum('media_type', ['image', 'video', 'document', 'floor_plan', 'virtual_tour']);

export const PropertyMediaSchema = z.object({
  id: z.string().uuid(),
  property_id: z.string().uuid(),
  lot_id: z.string().uuid().nullable(),
  media_url: z.string().url(),
  media_type: z.nativeEnum(MediaType).default('image'),
  mime_type: z.string().nullable(),
  file_size_bytes: z.number().int().nullable(),
  storage_bucket: z.string().nullable(),
  storage_path: z.string().nullable(),
  short_description: z.string().nullable(),
  sort_order: z.number().int().default(0),
  is_primary: z.boolean().default(false),
  created_at: z.date(),
});
export type PropertyMedia = z.infer<typeof PropertyMediaSchema>;

export const property_media = pgTable('property_media', {
  id: uuid('id').primaryKey().defaultRandom(),
  property_id: uuid('property_id').references(() => properties.id, { onDelete: 'cascade' }).notNull(),
  lot_id: uuid('lot_id').references(() => lots.id, { onDelete: 'cascade' }),
  media_url: text('media_url').notNull(),
  media_type: mediaTypeEnum('media_type').default('image').notNull(),
  mime_type: text('mime_type'),
  file_size_bytes: integer('file_size_bytes'),
  storage_bucket: text('storage_bucket'),
  storage_path: text('storage_path'),
  short_description: text('short_description'),
  sort_order: integer('sort_order').default(0).notNull(),
  is_primary: boolean('is_primary').default(false).notNull(),
  created_at: timestamp('created_at', { withTimezone: true }).defaultNow().notNull(),
});
