import { z } from 'zod';

/** BIDSPX Domain: Onboarding Step */
export const OnboardingStep = {
  contact: 'contact',
  agreement: 'agreement',
  inventory: 'inventory',
  photos: 'photos',
  complete: 'complete',
} as const;

export const OnboardingStepSchema = z.nativeEnum(OnboardingStep);
export type OnboardingStep = z.infer<typeof OnboardingStepSchema>;
