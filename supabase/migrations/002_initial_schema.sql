CREATE TYPE "public"."user_role" AS ENUM('admin', 'auctioneer', 'seller', 'bidder');--> statement-breakpoint
CREATE TYPE "public"."referral_source_status" AS ENUM('prospect', 'active', 'inactive', 'vip');--> statement-breakpoint
CREATE TYPE "public"."referral_source_type" AS ENUM('attorney', 'cpa', 'financial_advisor', 'funeral_home', 'realtor', 'bank_trust', 'direct', 'other');--> statement-breakpoint
CREATE TYPE "public"."onboarding_step" AS ENUM('contact', 'agreement', 'inventory', 'photos', 'complete');--> statement-breakpoint
CREATE TYPE "public"."seller_status" AS ENUM('lead', 'onboarding', 'active', 'inactive');--> statement-breakpoint
CREATE TYPE "public"."seller_type" AS ENUM('individual', 'estate', 'bank', 'corporate', 'government');--> statement-breakpoint
CREATE TYPE "public"."auction_type" AS ENUM('Absolute', 'MinimumBid', 'Reserve');--> statement-breakpoint
CREATE TYPE "public"."property_type" AS ENUM('Residential', 'Land', 'Commercial Sale', 'Farm', 'Residential Income');--> statement-breakpoint
CREATE TYPE "public"."standard_status" AS ENUM('Active', 'Pending', 'Closed', 'Withdrawn', 'Canceled', 'Coming Soon', 'Delete');--> statement-breakpoint
CREATE TYPE "public"."auction_status" AS ENUM('draft', 'scheduled', 'live', 'ended', 'canceled', 'settled');--> statement-breakpoint
CREATE TYPE "public"."auction_track" AS ENUM('CashExpress21', 'HomeReady45');--> statement-breakpoint
CREATE TYPE "public"."bidder_status" AS ENUM('pending', 'approved', 'suspended');--> statement-breakpoint
CREATE TYPE "public"."verification_method" AS ENUM('id', 'bank_letter', 'deposit');--> statement-breakpoint
CREATE TYPE "public"."bid_status" AS ENUM('active', 'outbid', 'winning', 'retracted', 'canceled');--> statement-breakpoint
CREATE TYPE "public"."lot_condition" AS ENUM('excellent', 'good', 'fair', 'as_is');--> statement-breakpoint
CREATE TYPE "public"."shipping_option" AS ENUM('pickup_only', 'freight', 'standard');--> statement-breakpoint
CREATE TYPE "public"."settlement_status" AS ENUM('pending', 'invoiced', 'earnest_received', 'paid_in_full', 'closed', 'disputed');--> statement-breakpoint
CREATE TYPE "public"."invoice_status" AS ENUM('draft', 'sent', 'partially_paid', 'paid', 'overdue', 'void');--> statement-breakpoint
CREATE TYPE "public"."invoice_line_type" AS ENUM('hammer_price', 'buyer_premium', 'tax', 'fee', 'adjustment', 'credit');--> statement-breakpoint
CREATE TYPE "public"."media_type" AS ENUM('image', 'video', 'document', 'floor_plan', 'virtual_tour');--> statement-breakpoint
CREATE TYPE "public"."notification_entity_type" AS ENUM('auction', 'bid', 'settlement', 'property');--> statement-breakpoint
CREATE TYPE "public"."notification_type" AS ENUM('outbid', 'auction_won', 'auction_lost', 'payment_due', 'auction_starting', 'auction_ending', 'bid_confirmed', 'new_auction', 'seller_update');--> statement-breakpoint
CREATE TYPE "public"."activity_entity_type" AS ENUM('property', 'auction', 'seller', 'bidder', 'referral_source');--> statement-breakpoint
CREATE TYPE "public"."actor_type" AS ENUM('human', 'system', 'ai');--> statement-breakpoint
CREATE TABLE "profiles" (
	"id" uuid PRIMARY KEY NOT NULL,
	"full_name" text,
	"display_name" text,
	"email" text NOT NULL,
	"phone" text,
	"avatar_url" text,
	"role" "user_role" DEFAULT 'bidder' NOT NULL,
	"is_active" boolean DEFAULT true NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "referral_sources" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"type" "referral_source_type" NOT NULL,
	"status" "referral_source_status" DEFAULT 'prospect' NOT NULL,
	"name" text NOT NULL,
	"company" text,
	"title" text,
	"email" text,
	"phone" text,
	"address_street" text,
	"address_city" text,
	"address_state" text DEFAULT 'TN' NOT NULL,
	"address_zip" text,
	"source" text,
	"notes" text,
	"lifetime_referrals" integer DEFAULT 0 NOT NULL,
	"lifetime_revenue" numeric(14, 2) DEFAULT '0' NOT NULL,
	"last_contact_at" timestamp with time zone,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "sellers" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"profile_id" uuid NOT NULL,
	"type" "seller_type" NOT NULL,
	"status" "seller_status" DEFAULT 'lead' NOT NULL,
	"onboarding_step" "onboarding_step" DEFAULT 'contact' NOT NULL,
	"company_name" text,
	"contact_name" text,
	"email" text,
	"phone" text,
	"address_street" text,
	"address_city" text,
	"address_state" text DEFAULT 'TN' NOT NULL,
	"address_zip" text,
	"commission_rate" numeric(5, 2),
	"consignment_date" timestamp with time zone,
	"referral_source_id" uuid,
	"notes" text,
	"metadata" jsonb,
	"stripe_connect_account_id" text,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "properties" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"seller_id" uuid NOT NULL,
	"street_number" text,
	"street_name" text,
	"street_suffix" text,
	"unit_number" text,
	"city" text,
	"state_or_province" text,
	"postal_code" text,
	"county_or_parish" text,
	"country" text,
	"latitude" numeric(10, 6),
	"longitude" numeric(10, 6),
	"directions" text,
	"listing_key" uuid DEFAULT gen_random_uuid() NOT NULL,
	"list_price" numeric(14, 2),
	"original_list_price" numeric(14, 2),
	"current_price" numeric(14, 2),
	"standard_status" "standard_status" NOT NULL,
	"property_type" "property_type" NOT NULL,
	"property_sub_type" text,
	"listing_id" text,
	"mls_status" text,
	"special_listing_conditions" text[],
	"auction_yn" boolean DEFAULT true NOT NULL,
	"auction_date" timestamp,
	"auction_start_time" timestamp with time zone,
	"auction_type" "auction_type",
	"auction_reserve_amount" numeric(14, 2),
	"auction_license_number" text,
	"auction_url" text,
	"living_area" numeric(14, 2),
	"living_area_units" text,
	"bedrooms_total" integer,
	"bathrooms_total" numeric(4, 2),
	"bathrooms_full" integer,
	"bathrooms_half" integer,
	"year_built" integer,
	"stories_total" integer,
	"garage_spaces" numeric(4, 2),
	"heating" text[],
	"cooling" text[],
	"flooring" text[],
	"roof" text[],
	"construction_materials" text[],
	"foundation_details" text[],
	"architectural_style" text[],
	"tax_annual_amount" numeric(14, 2),
	"tax_year" integer,
	"tax_legal_description" text,
	"parcel_number" text,
	"lot_size_acres" numeric(14, 4),
	"lot_size_square_feet" numeric(14, 2),
	"lot_features" text[],
	"water_source" text[],
	"sewer" text[],
	"utilities" text[],
	"universal_property_id" text,
	"universal_parcel_id" text,
	"public_remarks" text,
	"private_remarks" text,
	"showing_instructions" text,
	"embedding" vector(1536),
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp with time zone
);
--> statement-breakpoint
CREATE TABLE "auction_events" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"property_id" uuid NOT NULL,
	"auction_type" text DEFAULT 'timed_online' NOT NULL,
	"starts_at" timestamp with time zone NOT NULL,
	"ends_at" timestamp with time zone NOT NULL,
	"status" "auction_status" DEFAULT 'draft' NOT NULL,
	"soft_close_buffer_seconds" integer DEFAULT 120 NOT NULL,
	"max_extensions" integer DEFAULT 10 NOT NULL,
	"extension_count" integer DEFAULT 0 NOT NULL,
	"hard_close_at" timestamp with time zone NOT NULL,
	"buyer_premium_pct" numeric(5, 2) DEFAULT '10.00' NOT NULL,
	"auction_track" "auction_track" NOT NULL,
	"reserve_price" numeric(14, 2),
	"starting_bid" numeric(14, 2) NOT NULL,
	"bid_increment" numeric(14, 2),
	"earnest_money_amount" numeric(14, 2) DEFAULT '2000.00' NOT NULL,
	"created_by" uuid NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "bidders" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"profile_id" uuid NOT NULL,
	"bidder_number" text NOT NULL,
	"status" "bidder_status" DEFAULT 'pending' NOT NULL,
	"verification_method" "verification_method",
	"deposit_amount" numeric(14, 2),
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "bidders_bidder_number_unique" UNIQUE("bidder_number")
);
--> statement-breakpoint
CREATE TABLE "bidder_auction_approvals" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"bidder_id" uuid NOT NULL,
	"auction_id" uuid NOT NULL,
	"approved_by" uuid NOT NULL,
	"approved_at" timestamp with time zone DEFAULT now() NOT NULL,
	"notes" text,
	CONSTRAINT "bidder_auction_approvals_bidder_id_auction_id_unique" UNIQUE("bidder_id","auction_id")
);
--> statement-breakpoint
CREATE TABLE "bids" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"auction_id" uuid NOT NULL,
	"bidder_id" uuid NOT NULL,
	"amount" numeric(14, 2) NOT NULL,
	"max_amount" numeric(14, 2),
	"idempotency_key" text NOT NULL,
	"status" "bid_status" DEFAULT 'active' NOT NULL,
	"ip_address_hash" text,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "bids_idempotency_key_unique" UNIQUE("idempotency_key")
);
--> statement-breakpoint
CREATE TABLE "bid_increments" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"auction_id" uuid,
	"price_floor" numeric(14, 2) NOT NULL,
	"increment_amount" numeric(14, 2) NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "lots" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"auction_id" uuid NOT NULL,
	"property_id" uuid,
	"lot_number" text NOT NULL,
	"title" text NOT NULL,
	"description" text,
	"category" text,
	"starting_bid" numeric(14, 2) NOT NULL,
	"reserve_price" numeric(14, 2),
	"buy_now_price" numeric(14, 2),
	"condition" "lot_condition",
	"dimensions" text,
	"shipping_option" "shipping_option",
	"sort_order" integer DEFAULT 0 NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "settlements" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"auction_id" uuid NOT NULL,
	"winning_bid_id" uuid NOT NULL,
	"hammer_price" numeric(14, 2) NOT NULL,
	"buyer_premium_amount" numeric(14, 2) NOT NULL,
	"total_due" numeric(14, 2) NOT NULL,
	"earnest_money_applied" numeric(14, 2) DEFAULT '0.00' NOT NULL,
	"balance_due" numeric(14, 2) NOT NULL,
	"seller_payout_amount" numeric(14, 2) NOT NULL,
	"commission_amount" numeric(14, 2) NOT NULL,
	"status" "settlement_status" DEFAULT 'pending' NOT NULL,
	"closing_date" timestamp,
	"title_company" text,
	"escrow_number" text,
	"stripe_transfer_id" text,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "invoices" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"auction_id" uuid NOT NULL,
	"bidder_id" uuid NOT NULL,
	"settlement_id" uuid NOT NULL,
	"invoice_number" text NOT NULL,
	"hammer_price" numeric(14, 2) NOT NULL,
	"buyer_premium_amount" numeric(14, 2) NOT NULL,
	"tax_amount" numeric(14, 2) DEFAULT '0.00' NOT NULL,
	"total_due" numeric(14, 2) NOT NULL,
	"amount_paid" numeric(14, 2) DEFAULT '0.00' NOT NULL,
	"balance_due" numeric(14, 2) NOT NULL,
	"status" "invoice_status" DEFAULT 'draft' NOT NULL,
	"due_date" timestamp with time zone,
	"paid_at" timestamp with time zone,
	"stripe_payment_intent_id" text,
	"notes" text,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "invoices_invoice_number_unique" UNIQUE("invoice_number")
);
--> statement-breakpoint
CREATE TABLE "invoice_line_items" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"invoice_id" uuid NOT NULL,
	"lot_id" uuid,
	"description" text NOT NULL,
	"amount" numeric(14, 2) NOT NULL,
	"line_type" "invoice_line_type" NOT NULL,
	"sort_order" integer DEFAULT 0 NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "property_media" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"property_id" uuid NOT NULL,
	"lot_id" uuid,
	"media_url" text NOT NULL,
	"media_type" "media_type" DEFAULT 'image' NOT NULL,
	"mime_type" text,
	"file_size_bytes" integer,
	"storage_bucket" text,
	"storage_path" text,
	"short_description" text,
	"sort_order" integer DEFAULT 0 NOT NULL,
	"is_primary" boolean DEFAULT false NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "watchlists" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"profile_id" uuid NOT NULL,
	"auction_id" uuid,
	"property_id" uuid,
	"notify_on_bid" boolean DEFAULT true NOT NULL,
	"notify_on_ending" boolean DEFAULT true NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "watchlists_profile_id_auction_id_unique" UNIQUE NULLS NOT DISTINCT("profile_id","auction_id"),
	CONSTRAINT "watchlists_profile_id_property_id_unique" UNIQUE NULLS NOT DISTINCT("profile_id","property_id")
);
--> statement-breakpoint
CREATE TABLE "notifications" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"profile_id" uuid NOT NULL,
	"type" "notification_type" NOT NULL,
	"title" text NOT NULL,
	"body" text NOT NULL,
	"entity_type" "notification_entity_type" NOT NULL,
	"entity_id" uuid NOT NULL,
	"read_at" timestamp with time zone,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "activities" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"actor_id" uuid NOT NULL,
	"entity_type" "activity_entity_type" NOT NULL,
	"entity_id" uuid NOT NULL,
	"action" text NOT NULL,
	"details" jsonb,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "audit_logs" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"actor_type" "actor_type" NOT NULL,
	"actor_id" text,
	"action" text NOT NULL,
	"entity_type" text NOT NULL,
	"entity_id" text,
	"payload" jsonb,
	"ip_address" text,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
ALTER TABLE "sellers" ADD CONSTRAINT "sellers_profile_id_profiles_id_fk" FOREIGN KEY ("profile_id") REFERENCES "public"."profiles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sellers" ADD CONSTRAINT "sellers_referral_source_id_referral_sources_id_fk" FOREIGN KEY ("referral_source_id") REFERENCES "public"."referral_sources"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "properties" ADD CONSTRAINT "properties_seller_id_sellers_id_fk" FOREIGN KEY ("seller_id") REFERENCES "public"."sellers"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "auction_events" ADD CONSTRAINT "auction_events_property_id_properties_id_fk" FOREIGN KEY ("property_id") REFERENCES "public"."properties"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "auction_events" ADD CONSTRAINT "auction_events_created_by_profiles_id_fk" FOREIGN KEY ("created_by") REFERENCES "public"."profiles"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bidders" ADD CONSTRAINT "bidders_profile_id_profiles_id_fk" FOREIGN KEY ("profile_id") REFERENCES "public"."profiles"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bidder_auction_approvals" ADD CONSTRAINT "bidder_auction_approvals_bidder_id_bidders_id_fk" FOREIGN KEY ("bidder_id") REFERENCES "public"."bidders"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bidder_auction_approvals" ADD CONSTRAINT "bidder_auction_approvals_auction_id_auction_events_id_fk" FOREIGN KEY ("auction_id") REFERENCES "public"."auction_events"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bidder_auction_approvals" ADD CONSTRAINT "bidder_auction_approvals_approved_by_profiles_id_fk" FOREIGN KEY ("approved_by") REFERENCES "public"."profiles"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bids" ADD CONSTRAINT "bids_auction_id_auction_events_id_fk" FOREIGN KEY ("auction_id") REFERENCES "public"."auction_events"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bids" ADD CONSTRAINT "bids_bidder_id_bidders_id_fk" FOREIGN KEY ("bidder_id") REFERENCES "public"."bidders"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bid_increments" ADD CONSTRAINT "bid_increments_auction_id_auction_events_id_fk" FOREIGN KEY ("auction_id") REFERENCES "public"."auction_events"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "lots" ADD CONSTRAINT "lots_auction_id_auction_events_id_fk" FOREIGN KEY ("auction_id") REFERENCES "public"."auction_events"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "lots" ADD CONSTRAINT "lots_property_id_properties_id_fk" FOREIGN KEY ("property_id") REFERENCES "public"."properties"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "settlements" ADD CONSTRAINT "settlements_auction_id_auction_events_id_fk" FOREIGN KEY ("auction_id") REFERENCES "public"."auction_events"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "settlements" ADD CONSTRAINT "settlements_winning_bid_id_bids_id_fk" FOREIGN KEY ("winning_bid_id") REFERENCES "public"."bids"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_auction_id_auction_events_id_fk" FOREIGN KEY ("auction_id") REFERENCES "public"."auction_events"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_bidder_id_bidders_id_fk" FOREIGN KEY ("bidder_id") REFERENCES "public"."bidders"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_settlement_id_settlements_id_fk" FOREIGN KEY ("settlement_id") REFERENCES "public"."settlements"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "invoice_line_items" ADD CONSTRAINT "invoice_line_items_invoice_id_invoices_id_fk" FOREIGN KEY ("invoice_id") REFERENCES "public"."invoices"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "invoice_line_items" ADD CONSTRAINT "invoice_line_items_lot_id_lots_id_fk" FOREIGN KEY ("lot_id") REFERENCES "public"."lots"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "property_media" ADD CONSTRAINT "property_media_property_id_properties_id_fk" FOREIGN KEY ("property_id") REFERENCES "public"."properties"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "property_media" ADD CONSTRAINT "property_media_lot_id_lots_id_fk" FOREIGN KEY ("lot_id") REFERENCES "public"."lots"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "watchlists" ADD CONSTRAINT "watchlists_profile_id_profiles_id_fk" FOREIGN KEY ("profile_id") REFERENCES "public"."profiles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "watchlists" ADD CONSTRAINT "watchlists_auction_id_auction_events_id_fk" FOREIGN KEY ("auction_id") REFERENCES "public"."auction_events"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "watchlists" ADD CONSTRAINT "watchlists_property_id_properties_id_fk" FOREIGN KEY ("property_id") REFERENCES "public"."properties"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "notifications" ADD CONSTRAINT "notifications_profile_id_profiles_id_fk" FOREIGN KEY ("profile_id") REFERENCES "public"."profiles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "activities" ADD CONSTRAINT "activities_actor_id_profiles_id_fk" FOREIGN KEY ("actor_id") REFERENCES "public"."profiles"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "sellers_status_type_idx" ON "sellers" USING btree ("status","type");--> statement-breakpoint
CREATE INDEX "sellers_referral_source_idx" ON "sellers" USING btree ("referral_source_id");--> statement-breakpoint
CREATE INDEX "sellers_onboarding_step_idx" ON "sellers" USING btree ("onboarding_step");--> statement-breakpoint
CREATE INDEX "properties_standard_status_idx" ON "properties" USING btree ("standard_status");--> statement-breakpoint
CREATE INDEX "properties_property_type_idx" ON "properties" USING btree ("property_type");--> statement-breakpoint
CREATE INDEX "properties_city_state_idx" ON "properties" USING btree ("city","state_or_province");--> statement-breakpoint
CREATE INDEX "properties_list_price_idx" ON "properties" USING btree ("list_price");--> statement-breakpoint
CREATE INDEX "properties_auction_yn_idx" ON "properties" USING btree ("auction_yn");--> statement-breakpoint
CREATE INDEX "auction_events_status_ends_at_idx" ON "auction_events" USING btree ("status","ends_at");--> statement-breakpoint
CREATE INDEX "auction_events_property_id_idx" ON "auction_events" USING btree ("property_id");--> statement-breakpoint
CREATE INDEX "auction_events_created_by_idx" ON "auction_events" USING btree ("created_by");--> statement-breakpoint
CREATE INDEX "bidder_auction_approvals_auction_id_idx" ON "bidder_auction_approvals" USING btree ("auction_id");--> statement-breakpoint
CREATE INDEX "bids_auction_amount_desc_idx" ON "bids" USING btree ("auction_id","amount" DESC NULLS LAST);--> statement-breakpoint
CREATE INDEX "bids_bidder_created_at_idx" ON "bids" USING btree ("bidder_id","created_at");--> statement-breakpoint
CREATE INDEX "bid_increments_auction_price_floor_idx" ON "bid_increments" USING btree ("auction_id","price_floor");--> statement-breakpoint
CREATE INDEX "lots_auction_sort_order_idx" ON "lots" USING btree ("auction_id","sort_order");--> statement-breakpoint
CREATE INDEX "settlements_auction_idx" ON "settlements" USING btree ("auction_id");--> statement-breakpoint
CREATE INDEX "settlements_status_idx" ON "settlements" USING btree ("status");--> statement-breakpoint
CREATE INDEX "invoices_auction_idx" ON "invoices" USING btree ("auction_id");--> statement-breakpoint
CREATE INDEX "invoices_bidder_idx" ON "invoices" USING btree ("bidder_id");--> statement-breakpoint
CREATE INDEX "invoices_status_idx" ON "invoices" USING btree ("status");--> statement-breakpoint
CREATE INDEX "notifications_profile_read_at_idx" ON "notifications" USING btree ("profile_id","read_at");--> statement-breakpoint
CREATE INDEX "notifications_created_at_desc_idx" ON "notifications" USING btree ("created_at" DESC NULLS LAST);