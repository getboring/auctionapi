# AccountingService

**Namespace:** `vendor.framework.BLL.ServiceImplementations`

## Overview
Initializes a new instance of the AccountingService class

## Methods

### AccountingService
- **Endpoint / Signature:** `public AccountingService ()`
- **Description:** Initializes a new instance of the AccountingService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AccountingService
- **Endpoint / Signature:** `public AccountingService ( IDataContext data , IQueueManager queueManager , INotifierService notifier )`
- **Description:** Initializes a new instance of the AccountingService class
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | data | `vendor.framework.DAL IDataContext` | (Not documented in source) |
  | queueManager | `vendor.framework.Queueing IQueueManager` | (Not documented in source) |
  | notifier | `vendor.framework.Services INotifierService` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddEventFee
- **Endpoint / Signature:** `public void AddEventFee ( string actingUserName , int eventId , decimal feeAmount , string feeDescription , string additionalInfo )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
  | feeAmount | `System Decimal` | (Not documented in source) |
  | feeDescription | `System String` | (Not documented in source) |
  | additionalInfo | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddFees
- **Endpoint / Signature:** `public bool AddFees ( string actingUserName , string eventName , Dictionary < string , string > properties , Listing oldListing , Listing newListing , ListingAction listingAction , Offer acceptedOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventName | `System String` | (Not documented in source) |
  | properties | `System.Collections.Generic Dictionary String , String` | (Not documented in source) |
  | oldListing | `vendor.framework.DTO Listing` | (Not documented in source) |
  | newListing | `vendor.framework.DTO Listing` | (Not documented in source) |
  | listingAction | `vendor.framework.DTO ListingAction` | (Not documented in source) |
  | acceptedOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### AddInvoiceAdjustment
- **Endpoint / Signature:** `public void AddInvoiceAdjustment ( string actingUserName , int invoiceId , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceId | `System Int32` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddLineItemToConsignorStatement
- **Endpoint / Signature:** `public void AddLineItemToConsignorStatement ( string actingUserName , int statementID , int statementLineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
  | statementLineItemID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddLineItemToInvoice
- **Endpoint / Signature:** `public void AddLineItemToInvoice ( string actingUserName , int invoiceID , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddMiscSiteFee
- **Endpoint / Signature:** `public int AddMiscSiteFee ( string actingUserName , string userName , decimal feeAmount , string feeDescription , int ? listingId , string additionalInfo )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | feeAmount | `System Decimal` | (Not documented in source) |
  | feeDescription | `System String` | (Not documented in source) |
  | listingId | `System Nullable Int32` | (Not documented in source) |
  | additionalInfo | `System String` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### AddStatementAdjustment
- **Endpoint / Signature:** `public void AddStatementAdjustment ( string actingUserName , int statementID , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AttemptBatchPayment
- **Endpoint / Signature:** `public PaymentProviderResponse AttemptBatchPayment ( string actingUserName , Invoice invoice , out string details )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoice | `vendor.framework.DTO Invoice` | (Not documented in source) |
  | details | `System String` | (Not documented in source) |
- **Returns:** PaymentProviderResponse
- **Exceptions / Errors:**
  None documented

### AuthorizePayment
- **Endpoint / Signature:** `public PaymentProviderResponse AuthorizePayment ( string actingUserName , string recipientUserName , string payerUserName , decimal paymentAmount , string currencyCode , string paymentProviderName , PaymentParameters parameters )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | recipientUserName | `System String` | (Not documented in source) |
  | payerUserName | `System String` | (Not documented in source) |
  | paymentAmount | `System Decimal` | (Not documented in source) |
  | currencyCode | `System String` | (Not documented in source) |
  | paymentProviderName | `System String` | (Not documented in source) |
  | parameters | `vendor.framework.DTO PaymentParameters` | (Not documented in source) |
- **Returns:** PaymentProviderResponse
- **Exceptions / Errors:**
  None documented

### ChargeCreditCardsForAllUnpaidSales
- **Endpoint / Signature:** `public void ChargeCreditCardsForAllUnpaidSales ( string actingUserName , string paymentProviderName , out int successCount , out int failedCount )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | paymentProviderName | `System String` | (Not documented in source) |
  | successCount | `System Int32` | (Not documented in source) |
  | failedCount | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ChargeCreditCardsForAllUnpaidSalesByEvent
- **Endpoint / Signature:** `public void ChargeCreditCardsForAllUnpaidSalesByEvent ( string actingUserName , int eventId , string paymentProviderName , out int successCount , out int failedCount )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
  | paymentProviderName | `System String` | (Not documented in source) |
  | successCount | `System Int32` | (Not documented in source) |
  | failedCount | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ChargeCreditCardsForAllUnpaidSalesBySeller
- **Endpoint / Signature:** `public void ChargeCreditCardsForAllUnpaidSalesBySeller ( string actingUserName , string seller , string paymentProviderName , out int successCount , out int failedCount )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
  | paymentProviderName | `System String` | (Not documented in source) |
  | successCount | `System Int32` | (Not documented in source) |
  | failedCount | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### CreateAllInvoices
- **Endpoint / Signature:** `public int CreateAllInvoices ( string actingUserName , string seller , int ? eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
  | eventId | `System Nullable Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### CreateConsignorStatementFromLineItem
- **Endpoint / Signature:** `public Statement CreateConsignorStatementFromLineItem ( string actingUserName , int statementLineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementLineItemID | `System Int32` | (Not documented in source) |
- **Returns:** Statement
- **Exceptions / Errors:**
  None documented

### CreateInvoiceFromLineItem
- **Endpoint / Signature:** `public Invoice CreateInvoiceFromLineItem ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** Invoice
- **Exceptions / Errors:**
  None documented

### CreateNewLineItem
- **Endpoint / Signature:** `public LineItem CreateNewLineItem ( string actingUserName , LineItem lineItem )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItem | `vendor.framework.DTO LineItem` | (Not documented in source) |
- **Returns:** LineItem
- **Exceptions / Errors:**
  None documented

### DemandBatchProcessing
- **Endpoint / Signature:** `public void DemandBatchProcessing ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DemandSalesBatchProcessing
- **Endpoint / Signature:** `public void DemandSalesBatchProcessing ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### GenerateAllConsignorStatements
- **Endpoint / Signature:** `public int GenerateAllConsignorStatements ( string actingUserName , string sellerUN , int ? eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sellerUN | `System String` | (Not documented in source) |
  | eventId | `System Nullable Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### GetAllFeeProperties
- **Endpoint / Signature:** `public List < FeeProperty > GetAllFeeProperties ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetAllStripeCustomerIds
- **Endpoint / Signature:** `public Dictionary < int , string > GetAllStripeCustomerIds ( string actingUserName , string buyerUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | buyerUserName | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

### GetAllUnpaidSaleInvoices
- **Endpoint / Signature:** `public Page < Invoice > GetAllUnpaidSaleInvoices ( string actingUserName , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetBatchPaymentProviders
- **Endpoint / Signature:** `public List < string > GetBatchPaymentProviders ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetBatchPaymentStatus
- **Endpoint / Signature:** `public BatchPaymentCapability GetBatchPaymentStatus ( string actingUserName , Invoice invoice , out string details )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoice | `vendor.framework.DTO Invoice` | (Not documented in source) |
  | details | `System String` | (Not documented in source) |
- **Returns:** BatchPaymentCapability
- **Exceptions / Errors:**
  None documented

### GetConsignorFeeSchedules
- **Endpoint / Signature:** `public Dictionary < string , List < ConsignorFeeTier >> GetConsignorFeeSchedules ( string actingUserName , int sellerId , int ? consignorId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sellerId | `System Int32` | (Not documented in source) |
  | consignorId | `System Nullable Int32` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

### GetConsignorStatementByID
- **Endpoint / Signature:** `public Invoice GetConsignorStatementByID ( string actingUserName , int invoiceID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
- **Returns:** Invoice
- **Exceptions / Errors:**
  None documented

### GetHistoricalPayerFees
- **Endpoint / Signature:** `public Page < Invoice > GetHistoricalPayerFees ( string actingUserName , string payer , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | payer | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetInvoiceByID
- **Endpoint / Signature:** `public Invoice GetInvoiceByID ( string actingUserName , int invoiceID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
- **Returns:** Invoice
- **Exceptions / Errors:**
  None documented

### GetInvoicesBySeller
- **Endpoint / Signature:** `public Page < Invoice > GetInvoicesBySeller ( string actingUserName , string seller , string viewFilter , string searchTerm , string searchType , int ? eventId , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | eventId | `System Nullable Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetLineItemByID
- **Endpoint / Signature:** `public LineItem GetLineItemByID ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** LineItem
- **Exceptions / Errors:**
  None documented

### GetLineItemsByInvoice
- **Endpoint / Signature:** `public Page < LineItem > GetLineItemsByInvoice ( string actingUserName , int InvoiceID , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | InvoiceID | `System Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetLineItemsByStatement
- **Endpoint / Signature:** `public Page < StatementLineItem > GetLineItemsByStatement ( string actingUserName , int statementID , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetLineItemsForListingByPayer
- **Endpoint / Signature:** `public Page < LineItem > GetLineItemsForListingByPayer ( string actingUserName , string payer , int listingID , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | payer | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetLineItemsNeedingFeedbackFor
- **Endpoint / Signature:** `public List < LineItem > GetLineItemsNeedingFeedbackFor ( string actingUserName , int listingId , string fromUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
  | fromUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetListingLineItemsByPayer
- **Endpoint / Signature:** `public Page < LineItem > GetListingLineItemsByPayer ( string actingUserName , string payer , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | payer | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetListingLineItemsBySeller
- **Endpoint / Signature:** `public Page < LineItem > GetListingLineItemsBySeller ( string actingUserName , string seller , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetMySummaryCounts
- **Endpoint / Signature:** `public Dictionary < string , int > GetMySummaryCounts ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

### GetNewInvoicesByDate
- **Endpoint / Signature:** `public Page < Invoice > GetNewInvoicesByDate ( string actingUserName , DateTime ? fromDate , DateTime ? toDate , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | fromDate | `System Nullable DateTime` | (Not documented in source) |
  | toDate | `System Nullable DateTime` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetNextDateTime
- **Endpoint / Signature:** `public DateTime GetNextDateTime ( string actingUserName , string period , DateTime time , int day , int date )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | period | `System String` | (Not documented in source) |
  | time | `System DateTime` | (Not documented in source) |
  | day | `System Int32` | (Not documented in source) |
  | date | `System Int32` | (Not documented in source) |
- **Returns:** DateTime
- **Exceptions / Errors:**
  None documented

### GetOwnerInvoices
- **Endpoint / Signature:** `public Page < Invoice > GetOwnerInvoices ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | owner | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetPaidInvoicesByDate
- **Endpoint / Signature:** `public Page < Invoice > GetPaidInvoicesByDate ( string actingUserName , DateTime ? fromDate , DateTime ? toDate , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | fromDate | `System Nullable DateTime` | (Not documented in source) |
  | toDate | `System Nullable DateTime` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetPayerFees
- **Endpoint / Signature:** `public Invoice GetPayerFees ( string actingUserName , string payer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | payer | `System String` | (Not documented in source) |
- **Returns:** Invoice
- **Exceptions / Errors:**
  None documented

### GetPayerInvoices
- **Endpoint / Signature:** `public Page < Invoice > GetPayerInvoices ( string actingUserName , string payer , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | payer | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetPaymentProviderViewsForInvoice
- **Endpoint / Signature:** `public Dictionary < string , string > GetPaymentProviderViewsForInvoice ( string actingUserName , Invoice invoice )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoice | `vendor.framework.DTO Invoice` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

### GetSaleBatchPaymentProviderName
- **Endpoint / Signature:** `public string GetSaleBatchPaymentProviderName ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** String
- **Exceptions / Errors:**
  None documented

### GetShippingOptionsForInvoice
- **Endpoint / Signature:** `public List < InvoiceShippingOption > GetShippingOptionsForInvoice ( string actingUserName , int invoiceID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetSimilarLineItems
- **Endpoint / Signature:** `public List < LineItem > GetSimilarLineItems ( string actingUserName , int invoiceID , ref List < ShippingMethodCounts > shippingMethodCounts )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | shippingMethodCounts | `System.Collections.Generic List ShippingMethodCounts` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetStatementByID
- **Endpoint / Signature:** `public Statement GetStatementByID ( string actingUserName , int statementID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
- **Returns:** Statement
- **Exceptions / Errors:**
  None documented

### GetStatementLineItemByID
- **Endpoint / Signature:** `public StatementLineItem GetStatementLineItemByID ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** StatementLineItem
- **Exceptions / Errors:**
  None documented

### GetStripeCustomerId
- **Endpoint / Signature:** `public string GetStripeCustomerId ( string actingUserName , string sellerUserName , string buyerUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sellerUserName | `System String` | (Not documented in source) |
  | buyerUserName | `System String` | (Not documented in source) |
- **Returns:** String
- **Exceptions / Errors:**
  None documented

### ListingFeesRevenueReport
- **Endpoint / Signature:** `public Page < ListingFeesRevenueReportResult > ListingFeesRevenueReport ( string actingUserName , UserInput input , ref int currencyCount , ref decimal totalAmount )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | currencyCount | `System Int32` | (Not documented in source) |
  | totalAmount | `System Decimal` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### PreNotifyAsynchronousPayment
- **Endpoint / Signature:** `public void PreNotifyAsynchronousPayment ( string actingUserName , string paymentProviderName , int invoiceID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | paymentProviderName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ProcessAsynchronousPayment
- **Endpoint / Signature:** `public PaymentProviderResponse ProcessAsynchronousPayment ( string actingUserName , UserInput request )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | request | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** PaymentProviderResponse
- **Exceptions / Errors:**
  None documented

### ProcessSynchronousPayment
- **Endpoint / Signature:** `public PaymentProviderResponse ProcessSynchronousPayment ( string actingUserName , string paymentProviderName , int invoiceID , PaymentParameters parameters )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | paymentProviderName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | parameters | `vendor.framework.DTO PaymentParameters` | (Not documented in source) |
- **Returns:** PaymentProviderResponse
- **Exceptions / Errors:**
  None documented

### RefreshAllSiteFees
- **Endpoint / Signature:** `public void RefreshAllSiteFees ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### RemoveLineItemFromInvoice
- **Endpoint / Signature:** `public bool RemoveLineItemFromInvoice ( string actingUserName , int invoiceID , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### RemoveLineItemFromStatement
- **Endpoint / Signature:** `public bool RemoveLineItemFromStatement ( string actingUserName , int statementID , int statementLineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
  | statementLineItemID | `System Int32` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### SalesInvoicesReport
- **Endpoint / Signature:** `public Page < SalesInvoicesReportResult > SalesInvoicesReport ( string actingUserName , UserInput input , ref int currencyCount , ref decimal totalAmount )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | currencyCount | `System Int32` | (Not documented in source) |
  | totalAmount | `System Decimal` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SalesTransactionReport
- **Endpoint / Signature:** `public Page < SalesTransactionReportResult > SalesTransactionReport ( string actingUserName , UserInput input , ref int currencyCount , ref decimal totalAmount )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | currencyCount | `System Int32` | (Not documented in source) |
  | totalAmount | `System Decimal` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchStatementLineItemsByConsignor
- **Endpoint / Signature:** `public Page < StatementLineItem > SearchStatementLineItemsByConsignor ( string actingUserName , string consignorUserName , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignorUserName | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchStatementsByConsignor
- **Endpoint / Signature:** `public Page < Statement > SearchStatementsByConsignor ( string actingUserName , string consignorUserName , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignorUserName | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchStatementsBySeller
- **Endpoint / Signature:** `public Page < Statement > SearchStatementsBySeller ( string actingUserName , string seller , string viewFilter , string searchTerm , string searchType , int ? eventId , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | eventId | `System Nullable Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SetConsignorFeeSchedules
- **Endpoint / Signature:** `public void SetConsignorFeeSchedules ( string actingUserName , int sellerId , int ? consignorId , Dictionary < string , List < ConsignorFeeTier >> newFeeSchedules )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sellerId | `System Int32` | (Not documented in source) |
  | consignorId | `System Nullable Int32` | (Not documented in source) |
  | newFeeSchedules | `System.Collections.Generic Dictionary String , List ConsignorFeeTier` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetInvoiceArchived
- **Endpoint / Signature:** `public void SetInvoiceArchived ( string actingUserName , int invoiceId , bool archived )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceId | `System Int32` | (Not documented in source) |
  | archived | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetInvoiceBillingAddress
- **Endpoint / Signature:** `public void SetInvoiceBillingAddress ( string actingUserName , int invoiceID , int addressID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | addressID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetInvoiceEmailed
- **Endpoint / Signature:** `public void SetInvoiceEmailed ( string actingUserName , int invoiceId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetInvoiceLineItemStatus
- **Endpoint / Signature:** `public void SetInvoiceLineItemStatus ( string actingUserName , int lineItemId , string status )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemId | `System Int32` | (Not documented in source) |
  | status | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetInvoicePaid
- **Endpoint / Signature:** `public void SetInvoicePaid ( string actingUserName , int invoiceId , bool paid )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceId | `System Int32` | (Not documented in source) |
  | paid | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetInvoiceShipped
- **Endpoint / Signature:** `public void SetInvoiceShipped ( string actingUserName , int invoiceID , bool shipped )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | shipped | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetInvoiceShippingAddress
- **Endpoint / Signature:** `public void SetInvoiceShippingAddress ( string actingUserName , int invoiceID , int addressID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | addressID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetInvoiceStatus
- **Endpoint / Signature:** `public void SetInvoiceStatus ( string actingUserName , int invoiceID , string status )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | status | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetLineItemArchived
- **Endpoint / Signature:** `public void SetLineItemArchived ( string actingUserName , int lineItemId , bool archived )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemId | `System Int32` | (Not documented in source) |
  | archived | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetLineItemArchivedByPayer
- **Endpoint / Signature:** `public void SetLineItemArchivedByPayer ( string actingUserName , int lineItemId , bool archived )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemId | `System Int32` | (Not documented in source) |
  | archived | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetLineItemVoided
- **Endpoint / Signature:** `public void SetLineItemVoided ( string actingUserName , int lineItemId , bool voided )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemId | `System Int32` | (Not documented in source) |
  | voided | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetStatementArchived
- **Endpoint / Signature:** `public void SetStatementArchived ( string actingUserName , int statementId , bool archived )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementId | `System Int32` | (Not documented in source) |
  | archived | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetStatementBillingAddress
- **Endpoint / Signature:** `public void SetStatementBillingAddress ( string actingUserName , int statementID , int addressID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
  | addressID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetStatementEmailed
- **Endpoint / Signature:** `public void SetStatementEmailed ( string actingUserName , int statementId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetStatementLineItemStatus
- **Endpoint / Signature:** `public void SetStatementLineItemStatus ( string actingUserName , int lineItemId , string status )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemId | `System Int32` | (Not documented in source) |
  | status | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetStatementLineItemVoided
- **Endpoint / Signature:** `public void SetStatementLineItemVoided ( string actingUserName , int lineItemId , bool voided )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemId | `System Int32` | (Not documented in source) |
  | voided | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetStatementPaid
- **Endpoint / Signature:** `public void SetStatementPaid ( string actingUserName , int statementID , bool paid )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
  | paid | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetStripeCustomerId
- **Endpoint / Signature:** `public void SetStripeCustomerId ( string actingUserName , string sellerUserName , string buyerUserName , string customerId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sellerUserName | `System String` | (Not documented in source) |
  | buyerUserName | `System String` | (Not documented in source) |
  | customerId | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ToggleLineItemBuyersPremiumApplies
- **Endpoint / Signature:** `public void ToggleLineItemBuyersPremiumApplies ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ToggleLineItemTaxable
- **Endpoint / Signature:** `public void ToggleLineItemTaxable ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateInvoiceBuyersPremium
- **Endpoint / Signature:** `public void UpdateInvoiceBuyersPremium ( string actingUserName , int invoiceID , decimal newBuyerPremiumPercent )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | newBuyerPremiumPercent | `System Decimal` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateInvoiceComments
- **Endpoint / Signature:** `public void UpdateInvoiceComments ( string actingUserName , int invoiceID , string comments )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | comments | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateInvoiceProperties
- **Endpoint / Signature:** `public void UpdateInvoiceProperties ( string actingUserName , int invoiceID , Dictionary < string , string > properties )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | properties | `System.Collections.Generic Dictionary String , String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateInvoiceShipping
- **Endpoint / Signature:** `public void UpdateInvoiceShipping ( string actingUserName , int invoiceID , int shippingOptionID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
  | shippingOptionID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateStatementComments
- **Endpoint / Signature:** `public void UpdateStatementComments ( string actingUserName , int statementID , string comments )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
  | comments | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented
