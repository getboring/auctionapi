# ListingService

**Namespace:** `vendor.framework.BLL.ServiceImplementations`

## Overview
Initializes a new instance of the ListingService class

## Methods

### AcceptOffer
- **Endpoint / Signature:** `public void AcceptOffer ( UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddCustomPropertiesToListingType
- **Endpoint / Signature:** `public void AddCustomPropertiesToListingType ( string actingUserName , string listingTypeName , string scope , List < CustomProperty > properties )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
  | properties | `System.Collections.Generic List CustomProperty` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddIncrement
- **Endpoint / Signature:** `public void AddIncrement ( string actingUserName , string listingType , decimal priceLevel , decimal amount )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingType | `System String` | (Not documented in source) |
  | priceLevel | `System Decimal` | (Not documented in source) |
  | amount | `System Decimal` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddListingRegion
- **Endpoint / Signature:** `public void AddListingRegion ( string actingUserName , int listingId , int regionId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
  | regionId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddListingTypeAllowedMedia
- **Endpoint / Signature:** `public void AddListingTypeAllowedMedia ( string actingUserName , string listingTypeName , string mediaAssetName , string scope )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeName | `System String` | (Not documented in source) |
  | mediaAssetName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddListingTypeFeeProvider
- **Endpoint / Signature:** `public void AddListingTypeFeeProvider ( string actingUserName , string listingTypeName , string providerName , bool enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeName | `System String` | (Not documented in source) |
  | providerName | `System String` | (Not documented in source) |
  | enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AnswerListingQuestion
- **Endpoint / Signature:** `public void AnswerListingQuestion ( string actingUserName , int questionId , string answerText )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | questionId | `System Int32` | (Not documented in source) |
  | answerText | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AskListingQuestion
- **Endpoint / Signature:** `public void AskListingQuestion ( string actingUserName , string userName , int listingId , string questionText , out int newListingQuestionId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
  | questionText | `System String` | (Not documented in source) |
  | newListingQuestionId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AssignListingTypeToCategory
- **Endpoint / Signature:** `public void AssignListingTypeToCategory ( string actingUserName , int categoryID , int listingTypeID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryID | `System Int32` | (Not documented in source) |
  | listingTypeID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### CalculateFinalBuyerFee
- **Endpoint / Signature:** `public decimal CalculateFinalBuyerFee ( string actingUserName , string listingTypeName , decimal price , string currencyCode , int purchaseQuantity , int primaryCategoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeName | `System String` | (Not documented in source) |
  | price | `System Decimal` | (Not documented in source) |
  | currencyCode | `System String` | (Not documented in source) |
  | purchaseQuantity | `System Int32` | (Not documented in source) |
  | primaryCategoryId | `System Int32` | (Not documented in source) |
- **Returns:** Decimal
- **Exceptions / Errors:**
  None documented

### CalculateFinalFee
- **Endpoint / Signature:** `public decimal CalculateFinalFee ( string actingUserName , string listingTypeName , decimal price , string currencyCode , int primaryCategoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeName | `System String` | (Not documented in source) |
  | price | `System Decimal` | (Not documented in source) |
  | currencyCode | `System String` | (Not documented in source) |
  | primaryCategoryId | `System Int32` | (Not documented in source) |
- **Returns:** Decimal
- **Exceptions / Errors:**
  None documented

### CalculatePostFee
- **Endpoint / Signature:** `public decimal CalculatePostFee ( string actingUserName , string listingTypeName , decimal price , string currencyCode , int primaryCategoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeName | `System String` | (Not documented in source) |
  | price | `System Decimal` | (Not documented in source) |
  | currencyCode | `System String` | (Not documented in source) |
  | primaryCategoryId | `System Int32` | (Not documented in source) |
- **Returns:** Decimal
- **Exceptions / Errors:**
  None documented

### CreateListing
- **Endpoint / Signature:** `public bool CreateListing ( string actingUserName , UserInput userInput , bool notify , out int listingID , bool validateOnly = false )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | notify | `System Boolean` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | validateOnly | `System Boolean` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### DeclineOffer
- **Endpoint / Signature:** `public void DeclineOffer ( UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteIncrements
- **Endpoint / Signature:** `public void DeleteIncrements ( string actingUserName , string incrementIDs )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | incrementIDs | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteListing
- **Endpoint / Signature:** `public void DeleteListing ( string actingUserName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteListingQuestion
- **Endpoint / Signature:** `public void DeleteListingQuestion ( string actingUserName , int questionId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | questionId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteListingTypeAllowedMedia
- **Endpoint / Signature:** `public void DeleteListingTypeAllowedMedia ( string actingUserName , string listingTypeName , string mediaAssetName , string scope )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeName | `System String` | (Not documented in source) |
  | mediaAssetName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteListingTypeFeeProvider
- **Endpoint / Signature:** `public void DeleteListingTypeFeeProvider ( string actingUserName , string listingTypeName , string providerName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeName | `System String` | (Not documented in source) |
  | providerName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### EndListingEarly
- **Endpoint / Signature:** `public void EndListingEarly ( string actingUserName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ExtendAllEndDTTM
- **Endpoint / Signature:** `public void ExtendAllEndDTTM ( string actingUserName , int minutes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | minutes | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ExtendEndDTTMForListing
- **Endpoint / Signature:** `public void ExtendEndDTTMForListing ( string actingUserName , int listingID , int minutes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | minutes | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### GetAcceptedListingActions
- **Endpoint / Signature:** `public Page < ListingAction > GetAcceptedListingActions ( string actingUserName , int listingID , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetAcceptedListingActionsByUser
- **Endpoint / Signature:** `public Page < ListingAction > GetAcceptedListingActionsByUser ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetActiveListingsByOwner
- **Endpoint / Signature:** `public Page < Listing > GetActiveListingsByOwner ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

### GetActiveListingsByOwnerWithFillLevel
- **Endpoint / Signature:** `public Page < Listing > GetActiveListingsByOwnerWithFillLevel ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetAllCategoryListingTypes
- **Endpoint / Signature:** `public List < ListingType > GetAllCategoryListingTypes ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetAllListingActions
- **Endpoint / Signature:** `public Page < ListingAction > GetAllListingActions ( string actingUserName , int listingID , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetAllListingTypes
- **Endpoint / Signature:** `public List < ListingType > GetAllListingTypes ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetCountOfListingsByMediaId
- **Endpoint / Signature:** `public int GetCountOfListingsByMediaId ( int mediaId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | mediaId | `System Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### GetCurrentPrice
- **Endpoint / Signature:** `public CurrentPrice GetCurrentPrice ( string actingUserName , int listingID , string localCurrency )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | localCurrency | `System String` | (Not documented in source) |
- **Returns:** CurrentPrice
- **Exceptions / Errors:**
  None documented

### GetEndedListingsByOwner
- **Endpoint / Signature:** `public Page < Listing > GetEndedListingsByOwner ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

### GetEndedListingsByOwnerWithFillLevel
- **Endpoint / Signature:** `public Page < Listing > GetEndedListingsByOwnerWithFillLevel ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetIncrements
- **Endpoint / Signature:** `public List < Increment > GetIncrements ( string actingUserName , string listingType )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingType | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetLicenseInfo
- **Endpoint / Signature:** `public LicenseInfo GetLicenseInfo ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** LicenseInfo
- **Exceptions / Errors:**
  None documented

### GetListingActions
- **Endpoint / Signature:** `public Page < ListingAction > GetListingActions ( string actingUserName , int listingID , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetListingByIDAndUserWithFillLevel
- **Endpoint / Signature:** `public Listing GetListingByIDAndUserWithFillLevel ( string actingUserName , int listingID , string userName , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Listing
- **Exceptions / Errors:**
  None documented

### GetListingByIDWithFillLevel
- **Endpoint / Signature:** `public Listing GetListingByIDWithFillLevel ( string actingUserName , int listingID , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Listing
- **Exceptions / Errors:**
  None documented

### GetListingEndDTTM
- **Endpoint / Signature:** `public void GetListingEndDTTM ( int listingId , out DateTime ? utcListingEndDTTM , out DateTime ? utcCurrentDTTM )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingId | `System Int32` | (Not documented in source) |
  | utcListingEndDTTM | `System Nullable DateTime` | (Not documented in source) |
  | utcCurrentDTTM | `System Nullable DateTime` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### GetListingExtensionDetails
- **Endpoint / Signature:** `public Page < ReportRow > GetListingExtensionDetails ( string actingUserName , int ? eventId , int ? listingId , int pageIndex , int pageSize , string sortColumn , bool sortDescending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Nullable Int32` | (Not documented in source) |
  | listingId | `System Nullable Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | sortDescending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetListingQuestionById
- **Endpoint / Signature:** `public ListingQuestion GetListingQuestionById ( string actingUserName , int questionId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | questionId | `System Int32` | (Not documented in source) |
- **Returns:** ListingQuestion
- **Exceptions / Errors:**
  None documented

### GetListingTypeAllowedMedia
- **Endpoint / Signature:** `public List < ListItem > GetListingTypeAllowedMedia ( string listingTypeName , string scope )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingTypeName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetListingTypeFeeProviders
- **Endpoint / Signature:** `public List < ListItem > GetListingTypeFeeProviders ( string listingTypeName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingTypeName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetListingTypeFields
- **Endpoint / Signature:** `public List < CustomField > GetListingTypeFields ( string listingTypeName , string scope )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingTypeName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetListingTypeProperties
- **Endpoint / Signature:** `public List < CustomProperty > GetListingTypeProperties ( string listingTypeName , string scope )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingTypeName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetListingsByIDsWithFillLevel
- **Endpoint / Signature:** `public List < Listing > GetListingsByIDsWithFillLevel ( string actingUserName , int [] listingIDs , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingIDs | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetListingsByLocationWithFillLevel
- **Endpoint / Signature:** `public List < Listing > GetListingsByLocationWithFillLevel ( string actingUserName , string locationName , string statuses , int count , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | locationName | `System String` | (Not documented in source) |
  | statuses | `System String` | (Not documented in source) |
  | count | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetListingsBySeller
- **Endpoint / Signature:** `public Page < Listing > GetListingsBySeller ( string actingUserName , string seller , string viewFilter , string searchTerm , string searchType , string ListingType , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | ListingType | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetListingsNotWon
- **Endpoint / Signature:** `public Page < Listing > GetListingsNotWon ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetListingsNotWonWithFillLevel
- **Endpoint / Signature:** `public Page < Listing > GetListingsNotWonWithFillLevel ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetListingsWithActiveBidsWithFillLevel
- **Endpoint / Signature:** `public Page < Listing > GetListingsWithActiveBidsWithFillLevel ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetOfferById
- **Endpoint / Signature:** `public Offer GetOfferById ( string actingUserName , int offerId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | offerId | `System Int32` | (Not documented in source) |
- **Returns:** Offer
- **Exceptions / Errors:**
  None documented

### GetOffersByListingId
- **Endpoint / Signature:** `public List < Offer > GetOffersByListingId ( string actingUserName , int listingId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetPendingListingsByOwner
- **Endpoint / Signature:** `public Page < Listing > GetPendingListingsByOwner ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

### GetPendingListingsByOwnerWithFillLevel
- **Endpoint / Signature:** `public Page < Listing > GetPendingListingsByOwnerWithFillLevel ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetQuestionsByListingId
- **Endpoint / Signature:** `public List < ListingQuestion > GetQuestionsByListingId ( string actingUserName , int listingId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetUnsuccessfulListingsByOwner
- **Endpoint / Signature:** `public Page < Listing > GetUnsuccessfulListingsByOwner ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

### GetUnsuccessfulListingsByOwnerWithFillLevel
- **Endpoint / Signature:** `public Page < Listing > GetUnsuccessfulListingsByOwnerWithFillLevel ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetUpdateableListingFields
- **Endpoint / Signature:** `public Dictionary < string , bool > GetUpdateableListingFields ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

### GetWatchedListings
- **Endpoint / Signature:** `public Page < Listing > GetWatchedListings ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetWatchedListingsWithFillLevel
- **Endpoint / Signature:** `public Page < Listing > GetWatchedListingsWithFillLevel ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### IncrementHit
- **Endpoint / Signature:** `public void IncrementHit ( string actingUserName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ListingService
- **Endpoint / Signature:** `public ListingService ()`
- **Description:** Initializes a new instance of the ListingService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ListingService
- **Endpoint / Signature:** `public ListingService ( IDataContext data , IAccountingService accounting , INotifierService notifier , IQueueManager queueManager )`
- **Description:** Initializes a new instance of the ListingService class
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | data | `vendor.framework.DAL IDataContext` | (Not documented in source) |
  | accounting | `vendor.framework.Services IAccountingService` | (Not documented in source) |
  | notifier | `vendor.framework.Services INotifierService` | (Not documented in source) |
  | queueManager | `vendor.framework.Queueing IQueueManager` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### Relist
- **Endpoint / Signature:** `public bool Relist ( string actingUserName , int listingId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### RelistNoGet
- **Endpoint / Signature:** `public bool RelistNoGet ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### RemoveListingRegion
- **Endpoint / Signature:** `public void RemoveListingRegion ( string actingUserName , int listingId , int regionId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
  | regionId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### RollbackListingActionsByDTTM
- **Endpoint / Signature:** `public void RollbackListingActionsByDTTM ( string actingUserName , int listingID , DateTime rollbackDTTM )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | rollbackDTTM | `System DateTime` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### RollbackListingActionsByID
- **Endpoint / Signature:** `public void RollbackListingActionsByID ( string actingUserName , int listingID , int listingActionID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | listingActionID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SearchListings
- **Endpoint / Signature:** `public Page < Listing > SearchListings ( string actingUserName , ListingPageQuery query , int pageIndex , int pageSize , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | query | `vendor.framework.DTO ListingPageQuery` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | retrieveCatCounts | `System Boolean` | (Not documented in source) |
  | categoryCounts | `System.Collections.Generic Dictionary Int32 , Int32` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchListingsByConsignor
- **Endpoint / Signature:** `public Page < Listing > SearchListingsByConsignor ( string actingUserName , string consignorUserName , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchListingsWithAdditionalParameters
- **Endpoint / Signature:** `public Page < Listing > SearchListingsWithAdditionalParameters ( string actingUserName , ListingPageQuery query , List < KeyValuePair < string , string >> additionalParameters , int pageIndex , int pageSize , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | query | `vendor.framework.DTO ListingPageQuery` | (Not documented in source) |
  | additionalParameters | `System.Collections.Generic List KeyValuePair String , String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | retrieveCatCounts | `System Boolean` | (Not documented in source) |
  | categoryCounts | `System.Collections.Generic Dictionary Int32 , Int32` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchListingsWithAdditionalParametersAndFillLevel
- **Endpoint / Signature:** `public Page < Listing > SearchListingsWithAdditionalParametersAndFillLevel ( string actingUserName , ListingPageQuery query , List < KeyValuePair < string , string >> additionalParameters , int pageIndex , int pageSize , string fillLevel , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | query | `vendor.framework.DTO ListingPageQuery` | (Not documented in source) |
  | additionalParameters | `System.Collections.Generic List KeyValuePair String , String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
  | retrieveCatCounts | `System Boolean` | (Not documented in source) |
  | categoryCounts | `System.Collections.Generic Dictionary Int32 , Int32` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchListingsWithAdditionalParametersAndFillLevelAndContext
- **Endpoint / Signature:** `public Page < Listing > SearchListingsWithAdditionalParametersAndFillLevelAndContext ( string actingUserName , ListingPageQuery query , List < KeyValuePair < string , string >> additionalParameters , int pageIndex , int pageSize , string fillLevel , string contextUserName , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | query | `vendor.framework.DTO ListingPageQuery` | (Not documented in source) |
  | additionalParameters | `System.Collections.Generic List KeyValuePair String , String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
  | contextUserName | `System String` | (Not documented in source) |
  | retrieveCatCounts | `System Boolean` | (Not documented in source) |
  | categoryCounts | `System.Collections.Generic Dictionary Int32 , Int32` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchListingsWithFillLevel
- **Endpoint / Signature:** `public Page < Listing > SearchListingsWithFillLevel ( string actingUserName , ListingPageQuery query , int pageIndex , int pageSize , string fillLevel , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | query | `vendor.framework.DTO ListingPageQuery` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
  | retrieveCatCounts | `System Boolean` | (Not documented in source) |
  | categoryCounts | `System.Collections.Generic Dictionary Int32 , Int32` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchListingsWithFillLevelAndContext
- **Endpoint / Signature:** `public Page < Listing > SearchListingsWithFillLevelAndContext ( string actingUserName , ListingPageQuery query , int pageIndex , int pageSize , string fillLevel , string contextUserName , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | query | `vendor.framework.DTO ListingPageQuery` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
  | contextUserName | `System String` | (Not documented in source) |
  | retrieveCatCounts | `System Boolean` | (Not documented in source) |
  | categoryCounts | `System.Collections.Generic Dictionary Int32 , Int32` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchOffersByUser
- **Endpoint / Signature:** `public Page < Offer > SearchOffersByUser ( string actingUserName , string userName , string offerDirection , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | offerDirection | `System String` | (Not documented in source) |
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

### SearchOffersByUserWithListingFillLevel
- **Endpoint / Signature:** `public Page < Offer > SearchOffersByUserWithListingFillLevel ( string actingUserName , string userName , string offerDirection , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | offerDirection | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SendCounterOffer
- **Endpoint / Signature:** `public void SendCounterOffer ( UserInput userInput , out Offer newOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | newOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SendOffer
- **Endpoint / Signature:** `public void SendOffer ( UserInput userInput , out Offer newOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | newOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetAllListingRegions
- **Endpoint / Signature:** `public void SetAllListingRegions ( string actingUserName , int listingId , IEnumerable < int > allRegionIds )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
  | allRegionIds | `System.Collections.Generic IEnumerable Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetListingStatus
- **Endpoint / Signature:** `public void SetListingStatus ( string actingUserName , int listingId , string listingStatus )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
  | listingStatus | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### StartListingNow
- **Endpoint / Signature:** `public void StartListingNow ( string actingUserName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SubmitListingAction
- **Endpoint / Signature:** `public bool SubmitListingAction ( string actingUserName , UserInput userInput , out bool accepted , out ReasonCode reasonCode , out LineItem newPurchaseLineitem , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | accepted | `System Boolean` | (Not documented in source) |
  | reasonCode | `vendor.framework.DTO ReasonCode` | (Not documented in source) |
  | newPurchaseLineitem | `vendor.framework.DTO LineItem` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### ToggleListingType
- **Endpoint / Signature:** `public void ToggleListingType ( string actingUserName , int listingTypeID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UnassignListingTypeToCategory
- **Endpoint / Signature:** `public void UnassignListingTypeToCategory ( string actingUserName , int categoryID , int listingTypeID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryID | `System Int32` | (Not documented in source) |
  | listingTypeID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UndoListingAction
- **Endpoint / Signature:** `public void UndoListingAction ( string actingUserName , int listingID , int listingActionID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | listingActionID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateIncrements
- **Endpoint / Signature:** `public void UpdateIncrements ( string actingUserName , List < Increment > increments )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | increments | `System.Collections.Generic List Increment` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateListing
- **Endpoint / Signature:** `public void UpdateListing ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateListingBasic
- **Endpoint / Signature:** `public void UpdateListingBasic ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateListingTypeProperties
- **Endpoint / Signature:** `public void UpdateListingTypeProperties ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateListingWithUserInput
- **Endpoint / Signature:** `public bool UpdateListingWithUserInput ( string actingUserName , Listing listing , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### ValidateCounterOffer
- **Endpoint / Signature:** `public void ValidateCounterOffer ( UserInput userInput , out Offer newOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | newOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ValidateListingActionInput
- **Endpoint / Signature:** `public bool ValidateListingActionInput ( string actingUserName , UserInput userInput , int listingId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### ValidateOffer
- **Endpoint / Signature:** `public void ValidateOffer ( UserInput userInput , out Offer newOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | newOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented
