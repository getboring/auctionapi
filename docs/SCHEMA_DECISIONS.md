# BIDSPX Schema Decisions

This document outlines the architectural and design decisions made for the BIDSPX database schema, aligning with the RESO Data Dictionary 2.1 standard and the platform's specific auction engine requirements.

## 1. Standalone Auction Platform
BIDSPX is built as a standalone online real estate auction platform. The database functions (like `place_bid`, `calculate_settlement`, `end_auction`) are the core of the auction engine. There is no external auction system dependency; the PostgreSQL database handles all core logic natively, ensuring atomicity and high performance.

## 2. RESO Data Dictionary 2.1 Alignment
We chose RESO Data Dictionary 2.1 as the foundational standard for our property data model. This brings immense value:
- **Industry Standard**: It's widely adopted by 700+ MLSs, ensuring compatibility and making future IDX syndication seamless.
- **Credibility**: Using standard definitions provides instant credibility with realtors, brokers, and title companies.
- **Native Auction Fields**: DD 2.1 introduces native auction fields (e.g., `AuctionYN`, `AuctionDate`, `AuctionReserveAmount`), putting BIDSPX among the early adopters of this crucial standard.

## 3. Separation of Property and Auction Data
While RESO maps auction-specific fields directly onto the property resource, BIDSPX normalizes this data by splitting it. The `properties` table holds the core RESO fields, while the `auction_events` table handles the temporal and operational specifics of an auction. This is critical because a single property might undergo multiple distinct auction events over time (e.g., relistings, different terms).

## 4. Bid Increment Table Design
Instead of hardcoding increment logic, we implemented a `bid_increments` table using a price-tier pattern. This table provides global default tiers (e.g., $10 increments up to $100, $50 increments up to $500), but importantly, allows for per-auction overrides. This flexibility is necessary so auctioneers can adjust strategies on the fly without requiring code deployments.

## 5. Database-Level Bid Processing (`place_bid`)
The `place_bid()` logic is implemented entirely as a PostgreSQL function rather than an API endpoint. This ensures atomicity and consistency during concurrent, high-velocity bidding scenarios. By utilizing `SELECT ... FOR UPDATE`, we achieve reliable row-level locking within a transaction, preventing race conditions that application-level locking struggles with across distributed servers.

## 6. Proxy Bidding Architecture
We support proxy (auto) bidding via the `max_amount` field on the `bids` table. When a bidder sets a maximum amount, the system automatically bids on their behalf against competing bids up to their designated ceiling. This is standard functionality in modern online auctions (e.g., eBay, LiveAuctioneers) and increases total auction value while improving the bidder experience.

## 7. Bidder Auction Approvals Junction Table
Instead of using a `uuid[]` array on the `bidders` table to track approved auctions, we implemented a dedicated junction table: `bidder_auction_approvals`. This is fundamentally better for several reasons:
- **Referential Integrity**: True foreign keys can be enforced.
- **Performance**: Standard B-tree indexing is far more efficient than GIN indexes on arrays for these lookups.
- **Auditability**: It allows tracking *who* approved the bidder and *when*.

## 8. Settlements vs. Invoices
The post-auction financial flow is strictly separated into two concepts:
- **Settlements**: Track the seller-side transactions. This includes calculating the hammer price, deducting seller commissions, applying earnest money, and determining the final payout to the seller's Stripe Connected Account.
- **Invoices**: Track the buyer-side transactions. This itemizes the total amount due from the winning bidder, including the hammer price, buyer's premium, and applicable taxes or fees.

## 9. Buyer Premium Structure
The primary revenue mechanism for BIDSPX is the buyer's premium. The schema defaults to a 10% premium, but logic within the `calculate_settlement` function automatically adjusts this to 8% if the hammer price meets or exceeds $750,000. Sellers generally pay $0 commission to the platform directly.

## 10. Seller Commission Rates
While the platform doesn't charge sellers, sellers do pay auctioneers based on consignment contracts. The default commission rates vary by seller type (e.g., Individuals: 15%, Banks: 10%, Government: 8-10%). These defaults are handled within the settlement calculation, with provisions for custom overrides per seller.

## 11. Anti-Sniping (Soft Close)
To prevent last-second "sniping," the platform employs a soft-close mechanism. If a bid is placed within a designated buffer window (default 120 seconds) before the scheduled `ends_at` time, the auction is automatically extended by that buffer duration. A configurable `max_extensions` limit and a computed absolute `hard_close_at` time ensure the auction eventually concludes.

## 12. Default-Deny Row Level Security (RLS)
Security is paramount. All tables enforce a strict "default-deny" RLS policy. Notable policies include:
- Bidders cannot view the `max_amount` (proxy bids) of competing bidders.
- Sellers can only access data pertaining to their properties and settlements.
- Anonymous users only have read access to active/public listings and auction events.
- Direct insertion into the `bids` table is blocked; all bids must funnel through the `place_bid()` RPC to enforce business rules.

## 13. Stripe Connect Integration
BIDSPX operates a marketplace model via Stripe Connect. The platform is the primary merchant, and sellers act as Connected Accounts.
- Buyers pay the platform (tracked via `stripe_payment_intent_id` on invoices).
- The platform transfers the net amount to the seller (tracked via `stripe_transfer_id` on settlements).
- The Supabase Stripe Sync Engine is leveraged to sync native Stripe data into a dedicated, read-only `stripe.*` schema for reconciliation, avoiding the need to manually model Stripe's complex internal structures.

## 14. In-Database Scheduling (pg_cron)
Auction end states are processed seamlessly within the database using `pg_cron`. A cron job runs every 30 seconds to evaluate ending auctions (`end_auctions_batch`). This eliminates the need for external worker queues or scheduling infrastructure. The query utilizes `SKIP LOCKED` to prevent concurrent cron runs from processing the same auction twice.

## 15. Semantic Search (pgvector)
To facilitate advanced "find similar properties" queries, the `properties` table includes a vector embedding column. This leverages `pgvector` with a default 1536 dimensionality (typical for OpenAI ada-002 models) and utilizes an HNSW index for highly performant approximate nearest neighbor searches. This works in tandem with standard PostgreSQL `tsvector` full-text search on public remarks.

## 16. Supabase Storage Architecture
Storage is categorized into specific buckets with distinct security profiles:
- `property-photos`: Public bucket, served via CDN, allowing image transformations.
- `property-documents`: Private bucket for sensitive disclosures or title documents, requiring signed URLs.
- `bidder-documents`: Private bucket for PII like ID scans and proof of funds.
- `seller-agreements`: Private bucket for consignment contracts.
RLS policies restrict access based on user roles and data ownership.

## 17. Automatic Profile Creation Trigger
A crucial trigger bridges Supabase Auth and our application data. When a user registers (e.g., via the mobile app using `supabase.auth.signUp()`), an `AFTER INSERT` trigger automatically populates the `profiles` table. This ensures the user immediately has the necessary records for subsequent RLS policies to evaluate correctly without requiring manual profile initialization.

## 18. Timestamp Automation
PostgreSQL does not natively update `updated_at` columns automatically. We enforce data integrity by attaching `BEFORE UPDATE` triggers to every relevant table, ensuring the `updated_at` timestamp is reliably set to `now()` on every modification.

## 19. Shared Package Constraints (Expo Compatibility)
The `@bidspx/shared` package is meticulously structured to prevent importing Node.js-specific modules (like `pg` or `drizzle-orm`). It serves strictly to re-export pure TypeScript types and Zod schemas. This deliberate limitation is required to maintain full compatibility with the Expo React Native mobile application environment.
