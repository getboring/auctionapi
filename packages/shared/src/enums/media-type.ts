import { z } from 'zod';

/** BIDSPX Domain: Media Type */
export const MediaType = {
  image: 'image',
  video: 'video',
  document: 'document',
  floor_plan: 'floor_plan',
  virtual_tour: 'virtual_tour',
} as const;

export const MediaTypeSchema = z.nativeEnum(MediaType);
export type MediaType = z.infer<typeof MediaTypeSchema>;
