# EventService

**Namespace:** `vendor.framework.BLL.Events.ServiceImplementations`

## Overview
Initializes a new instance of the EventService class

## Methods

### AddEvent
- **Endpoint / Signature:** `public void AddEvent ( string actingUserName , string owningUserName , Event auctionEvent )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | owningUserName | `System String` | (Not documented in source) |
  | auctionEvent | `vendor.framework.DTO Event` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddIncrement
- **Endpoint / Signature:** `public void AddIncrement ( string actingUserName , int eventID , decimal priceLevel , decimal amount )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
  | priceLevel | `System Decimal` | (Not documented in source) |
  | amount | `System Decimal` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### CalculateLotEndDTTMs
- **Endpoint / Signature:** `public void CalculateLotEndDTTMs ( string actingUserName , int eventID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### CreateEvent
- **Endpoint / Signature:** `public int CreateEvent ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### CreateLot
- **Endpoint / Signature:** `public bool CreateLot ( string actingUserName , UserInput input , bool notify , out int listingID , bool validateOnly = false )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | notify | `System Boolean` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
  | validateOnly | `System Boolean` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### DeleteEvent
- **Endpoint / Signature:** `public void DeleteEvent ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteIncrements
- **Endpoint / Signature:** `public void DeleteIncrements ( string actingUserName , int eventID , string incrementIDs )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
  | incrementIDs | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteLot
- **Endpoint / Signature:** `public void DeleteLot ( string actingUserName , int lotID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### EndEventEarly
- **Endpoint / Signature:** `public void EndEventEarly ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### EndLotEarly
- **Endpoint / Signature:** `public void EndLotEarly ( string actingUserName , int lotID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### EventService
- **Endpoint / Signature:** `public EventService ()`
- **Description:** Initializes a new instance of the EventService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### EventService
- **Endpoint / Signature:** `public EventService ( IDataContext data , ICommonService common , IAccountingService accounting , IQueueManager queueManager )`
- **Description:** Initializes a new instance of the EventService class
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | data | `vendor.framework.DAL IDataContext` | (Not documented in source) |
  | common | `vendor.framework.Services ICommonService` | (Not documented in source) |
  | accounting | `vendor.framework.Services IAccountingService` | (Not documented in source) |
  | queueManager | `vendor.framework.Queueing IQueueManager` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### FinalizeDraftValidation
- **Endpoint / Signature:** `public void FinalizeDraftValidation ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### FinalizeEventPublication
- **Endpoint / Signature:** `public void FinalizeEventPublication ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### GetEventByIDWithFillLevel
- **Endpoint / Signature:** `public Event GetEventByIDWithFillLevel ( string actingUserName , int eventID , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Event
- **Exceptions / Errors:**
  None documented

### GetEventClosingGroups
- **Endpoint / Signature:** `public EventOrganization GetEventClosingGroups ( string actingUserName , string owner , int eventID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | owner | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
- **Returns:** EventOrganization
- **Exceptions / Errors:**
  None documented

### GetEventProperties
- **Endpoint / Signature:** `public List < CustomProperty > GetEventProperties ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetEventSoftClosingGroups
- **Endpoint / Signature:** `public EventOrganization GetEventSoftClosingGroups ( string actingUserName , string owner , int eventID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | owner | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
- **Returns:** EventOrganization
- **Exceptions / Errors:**
  None documented

### GetEventSummaryCounts
- **Endpoint / Signature:** `public Dictionary < string , decimal > GetEventSummaryCounts ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

### GetEventsByOwnerAndStatusWithFillLevel
- **Endpoint / Signature:** `public Page < Event > GetEventsByOwnerAndStatusWithFillLevel ( string actingUserName , string owner , string statuses , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel , DateTime ? createdAfter )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | owner | `System String` | (Not documented in source) |
  | statuses | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
  | createdAfter | `System Nullable DateTime` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetEventsByStatusWithFillLevel
- **Endpoint / Signature:** `public Page < Event > GetEventsByStatusWithFillLevel ( string actingUserName , string statuses , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statuses | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetHomepageAuctionEventsWithFillLevel
- **Endpoint / Signature:** `public Page < Event > GetHomepageAuctionEventsWithFillLevel ( string actingUserName , string viewFilter , UserInput input , int pageIndex , int pageSize , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetIncrements
- **Endpoint / Signature:** `public List < Increment > GetIncrements ( string actingUserName , int eventID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetLotByID
- **Endpoint / Signature:** `public Lot GetLotByID ( string actingUserName , int lotID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
- **Returns:** Lot
- **Exceptions / Errors:**
  None documented

### GetLotByIDAndUser
- **Endpoint / Signature:** `public Lot GetLotByIDAndUser ( string actingUserName , int lotID , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** Lot
- **Exceptions / Errors:**
  None documented

### GetLotByIDAndUserWithFillLevel
- **Endpoint / Signature:** `public Lot GetLotByIDAndUserWithFillLevel ( string actingUserName , int lotID , string userName , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Lot
- **Exceptions / Errors:**
  None documented

### GetLotByIDWithFillLevel
- **Endpoint / Signature:** `public Lot GetLotByIDWithFillLevel ( string actingUserName , int lotID , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Lot
- **Exceptions / Errors:**
  None documented

### GetLotCountByListingStatus
- **Endpoint / Signature:** `public int GetLotCountByListingStatus ( string actingUserName , int eventId , string listingStatus )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
  | listingStatus | `System String` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### GetLotIdByLotNumber
- **Endpoint / Signature:** `public int GetLotIdByLotNumber ( string actingUserName , int eventId , string lotNumber )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
  | lotNumber | `System String` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### GetLotIdByLotOrder
- **Endpoint / Signature:** `public int GetLotIdByLotOrder ( string actingUserName , int eventId , int lotOrder )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
  | lotOrder | `System Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### GetLotsByEventWithFillLevel
- **Endpoint / Signature:** `public Page < Lot > GetLotsByEventWithFillLevel ( string actingUserName , int eventID , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetNextLotClosing
- **Endpoint / Signature:** `public int ? GetNextLotClosing ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** Nullable
- **Exceptions / Errors:**
  None documented

### InitiateEventPublication
- **Endpoint / Signature:** `public void InitiateEventPublication ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SearchLotsByEvent
- **Endpoint / Signature:** `public Page < Listing > SearchLotsByEvent ( string actingUserName , int eventId , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
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

### SetEventArchived
- **Endpoint / Signature:** `public void SetEventArchived ( string actingUserName , int eventId , bool archived )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
  | archived | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetEventClosingGroups
- **Endpoint / Signature:** `public void SetEventClosingGroups ( string actingUserName , string owner , int eventID , int [][] lotOrganization )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | owner | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
  | lotOrganization | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetEventHiddenWhenClosed
- **Endpoint / Signature:** `public void SetEventHiddenWhenClosed ( string actingUserName , int eventId , bool hiddenWhenClosed )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
  | hiddenWhenClosed | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetEventSoftClosingGroups
- **Endpoint / Signature:** `public void SetEventSoftClosingGroups ( string actingUserName , string owner , int eventID , int [][] lotOrganization )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | owner | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
  | lotOrganization | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetLotNumber
- **Endpoint / Signature:** `public void SetLotNumber ( string actingUserName , int lotId , string newLotNumber )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotId | `System Int32` | (Not documented in source) |
  | newLotNumber | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### StartEventEarly
- **Endpoint / Signature:** `public void StartEventEarly ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### TransferEventAndLotOwnershipToNewUser
- **Endpoint / Signature:** `public void TransferEventAndLotOwnershipToNewUser ( string actingUserName , int eventId , string newEventOwnerUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
  | newEventOwnerUserName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateEvent
- **Endpoint / Signature:** `public void UpdateEvent ( string actingUserName , Event auctionEvent )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | auctionEvent | `vendor.framework.DTO Event` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateEventWithUserInput
- **Endpoint / Signature:** `public void UpdateEventWithUserInput ( string actingUserName , UserInput input , bool validateOnly )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | validateOnly | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateIncrements
- **Endpoint / Signature:** `public void UpdateIncrements ( string actingUserName , int eventID , List < Increment > increments )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
  | increments | `System.Collections.Generic List Increment` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateLotWithUserInput
- **Endpoint / Signature:** `public bool UpdateLotWithUserInput ( string actingUserName , Lot lot , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lot | `vendor.framework.DTO Lot` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### ValidateLot
- **Endpoint / Signature:** `public void ValidateLot ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented
