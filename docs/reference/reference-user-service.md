# UserService

**Namespace:** `vendor.framework.BLL.ServiceImplementations`

## Overview
Initializes a new instance of the UserService class

## Methods

### AddAddressToUser
- **Endpoint / Signature:** `public void AddAddressToUser ( string actingUserName , int userID , Address address )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userID | `System Int32` | (Not documented in source) |
  | address | `vendor.framework.DTO Address` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddCreditCardToUser
- **Endpoint / Signature:** `public void AddCreditCardToUser ( string actingUserName , string userName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddFeedback
- **Endpoint / Signature:** `public void AddFeedback ( string actingUserName , string userName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddSalesTaxRate
- **Endpoint / Signature:** `public void AddSalesTaxRate ( string actingUserName , string userName , int stateID , decimal taxRate , string shipping )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | stateID | `System Int32` | (Not documented in source) |
  | taxRate | `System Decimal` | (Not documented in source) |
  | shipping | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddUserToRole
- **Endpoint / Signature:** `public void AddUserToRole ( string actingUserName , string userName , string roleName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | roleName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### AddWatch
- **Endpoint / Signature:** `public void AddWatch ( string actingUserName , string userName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### ChangeMessageReadState
- **Endpoint / Signature:** `public void ChangeMessageReadState ( string actingUserName , int messageId , string ownerUsername , bool read )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | messageId | `System Int32` | (Not documented in source) |
  | ownerUsername | `System String` | (Not documented in source) |
  | read | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### CountOfUsersOnline
- **Endpoint / Signature:** `public int CountOfUsersOnline ( string actingUserName , int onlineTimeMinutes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | onlineTimeMinutes | `System Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### CreateConsignor
- **Endpoint / Signature:** `public void CreateConsignor ( string actingUserName , Consignor consignor )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignor | `vendor.framework.DTO Consignor` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### CreateConsignorFromUserInput
- **Endpoint / Signature:** `public Consignor CreateConsignorFromUserInput ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Consignor
- **Exceptions / Errors:**
  None documented

### DeleteAddress
- **Endpoint / Signature:** `public void DeleteAddress ( string actingUserName , int addressID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | addressID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteCreditCard
- **Endpoint / Signature:** `public void DeleteCreditCard ( string actingUserName , string userName , int creditCardID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | creditCardID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteFeedback
- **Endpoint / Signature:** `public void DeleteFeedback ( string actingUserName , int feedbackID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | feedbackID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteMessage
- **Endpoint / Signature:** `public void DeleteMessage ( string actingUserName , int messageId , string ownerUsername )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | messageId | `System Int32` | (Not documented in source) |
  | ownerUsername | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteSalesTaxRates
- **Endpoint / Signature:** `public void DeleteSalesTaxRates ( string actingUserName , string salesTaxRateIDs )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | salesTaxRateIDs | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### DeleteUser
- **Endpoint / Signature:** `public void DeleteUser ( string actingUserName , int userID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### FindUsersByCustomProperty
- **Endpoint / Signature:** `public List < User > FindUsersByCustomProperty ( string actingUserName , string customFieldName , string propertyValue )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldName | `System String` | (Not documented in source) |
  | propertyValue | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GenerateUserListArgs
- **Endpoint / Signature:** `public GenerateUserListArgs ()`
- **Description:** Initializes a new instance of the UserService GenerateUserListArgs class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### GenerateUserListCSV
- **Endpoint / Signature:** `public void GenerateUserListCSV ( string actingUserName , int Id , string searchUserName , string searchFirstName , string searchLastName , string searchEmail , string searchStatus , string searchRole , string sortColumn , bool sortDescending , bool includeHeaders , string columnSpecification )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | Id | `System Int32` | (Not documented in source) |
  | searchUserName | `System String` | (Not documented in source) |
  | searchFirstName | `System String` | (Not documented in source) |
  | searchLastName | `System String` | (Not documented in source) |
  | searchEmail | `System String` | (Not documented in source) |
  | searchStatus | `System String` | (Not documented in source) |
  | searchRole | `System String` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | sortDescending | `System Boolean` | (Not documented in source) |
  | includeHeaders | `System Boolean` | (Not documented in source) |
  | columnSpecification | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### GenerateUserListCSVSync
- **Endpoint / Signature:** `public string GenerateUserListCSVSync ( string actingUserName , int Id , string searchUserName , string searchFirstName , string searchLastName , string searchEmail , string searchStatus , string searchRole , string sortColumn , bool sortDescending , bool includeHeaders , string columnSpecification )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | Id | `System Int32` | (Not documented in source) |
  | searchUserName | `System String` | (Not documented in source) |
  | searchFirstName | `System String` | (Not documented in source) |
  | searchLastName | `System String` | (Not documented in source) |
  | searchEmail | `System String` | (Not documented in source) |
  | searchStatus | `System String` | (Not documented in source) |
  | searchRole | `System String` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | sortDescending | `System Boolean` | (Not documented in source) |
  | includeHeaders | `System Boolean` | (Not documented in source) |
  | columnSpecification | `System String` | (Not documented in source) |
- **Returns:** String
- **Exceptions / Errors:**
  None documented

### GetAddresses
- **Endpoint / Signature:** `public List < Address > GetAddresses ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetAllFeedbackFromUser
- **Endpoint / Signature:** `public Page < Feedback > GetAllFeedbackFromUser ( string actingUserName , string fromUserName , int ? monthsOld , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | fromUserName | `System String` | (Not documented in source) |
  | monthsOld | `System Nullable Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetAllFeedbackToUser
- **Endpoint / Signature:** `public Page < Feedback > GetAllFeedbackToUser ( string actingUserName , string toUserName , int ? monthsOld , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | toUserName | `System String` | (Not documented in source) |
  | monthsOld | `System Nullable Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetAllRoles
- **Endpoint / Signature:** `public List < Role > GetAllRoles ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetAllUsers
- **Endpoint / Signature:** `public Page < User > GetAllUsers ( string actingUserName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

### GetBuyerFeedback
- **Endpoint / Signature:** `public Page < Feedback > GetBuyerFeedback ( string actingUserName , string buyer , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | buyer | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetBuyerFeedbackToUser
- **Endpoint / Signature:** `public Page < Feedback > GetBuyerFeedbackToUser ( string actingUserName , string toUserName , int ? monthsOld , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | toUserName | `System String` | (Not documented in source) |
  | monthsOld | `System Nullable Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetConsignorById
- **Endpoint / Signature:** `public Consignor GetConsignorById ( string actingUserName , int consignorId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignorId | `System Int32` | (Not documented in source) |
- **Returns:** Consignor
- **Exceptions / Errors:**
  None documented

### GetConsignorBySeller
- **Endpoint / Signature:** `public Consignor GetConsignorBySeller ( string actingUserName , int sellerId , string consignorNumber )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sellerId | `System Int32` | (Not documented in source) |
  | consignorNumber | `System String` | (Not documented in source) |
- **Returns:** Consignor
- **Exceptions / Errors:**
  None documented

### GetCreditCardsForUser
- **Endpoint / Signature:** `public List < CreditCard > GetCreditCardsForUser ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetExternalIdProviders
- **Endpoint / Signature:** `public IEnumerable < string > GetExternalIdProviders ( string actingUserName , int localUserId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | localUserId | `System Int32` | (Not documented in source) |
- **Returns:** IEnumerable
- **Exceptions / Errors:**
  None documented

### GetFeedbackRating
- **Endpoint / Signature:** `public FeedbackRating GetFeedbackRating ( string actingUserName , string userName , bool basicOnly )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | basicOnly | `System Boolean` | (Not documented in source) |
- **Returns:** FeedbackRating
- **Exceptions / Errors:**
  None documented

### GetMessagesForReceiver
- **Endpoint / Signature:** `public Page < UserMessage > GetMessagesForReceiver ( string actingUserName , string receivingUser , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | receivingUser | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetMessagesForSender
- **Endpoint / Signature:** `public Page < UserMessage > GetMessagesForSender ( string actingUserName , string sendingUser , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sendingUser | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetRoleByName
- **Endpoint / Signature:** `public Role GetRoleByName ( string actingUserName , string roleName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | roleName | `System String` | (Not documented in source) |
- **Returns:** Role
- **Exceptions / Errors:**
  None documented

### GetRolesForUser
- **Endpoint / Signature:** `public List < Role > GetRolesForUser ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetSalesTaxRatesByUser
- **Endpoint / Signature:** `public List < SalesTaxRate > GetSalesTaxRatesByUser ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetSellerFeedback
- **Endpoint / Signature:** `public Page < Feedback > GetSellerFeedback ( string actingUserName , string seller , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetSellerFeedbackToUser
- **Endpoint / Signature:** `public Page < Feedback > GetSellerFeedbackToUser ( string actingUserName , string toUserName , int ? monthsOld , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | toUserName | `System String` | (Not documented in source) |
  | monthsOld | `System Nullable Int32` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetUnHashedPasswords
- **Endpoint / Signature:** `public Dictionary < int , string > GetUnHashedPasswords ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

### GetUnreadMessageCount
- **Endpoint / Signature:** `public int GetUnreadMessageCount ( string actingUserName , string recipientUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | recipientUserName | `System String` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### GetUserByEmail
- **Endpoint / Signature:** `public User GetUserByEmail ( string actingUserName , string email )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | email | `System String` | (Not documented in source) |
- **Returns:** User
- **Exceptions / Errors:**
  None documented

### GetUserByID
- **Endpoint / Signature:** `public User GetUserByID ( string actingUserName , int userID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userID | `System Int32` | (Not documented in source) |
- **Returns:** User
- **Exceptions / Errors:**
  None documented

### GetUserByUserName
- **Endpoint / Signature:** `public User GetUserByUserName ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** User
- **Exceptions / Errors:**
  None documented

### GetUserByUserNameOrEmail
- **Endpoint / Signature:** `public User GetUserByUserNameOrEmail ( string actingUserName , string userNameOrEmailAddress )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userNameOrEmailAddress | `System String` | (Not documented in source) |
- **Returns:** User
- **Exceptions / Errors:**
  None documented

### GetUserMessage
- **Endpoint / Signature:** `public UserMessage GetUserMessage ( string actingUserName , int messageId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | messageId | `System Int32` | (Not documented in source) |
- **Returns:** UserMessage
- **Exceptions / Errors:**
  None documented

### GetUserMessages
- **Endpoint / Signature:** `public Page < UserMessage > GetUserMessages ( string actingUserName , string username , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | username | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### GetUserProperties
- **Endpoint / Signature:** `public Page < CustomProperty > GetUserProperties ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

### GetUsersInRole
- **Endpoint / Signature:** `public List < User > GetUsersInRole ( string actingUserName , string roleName , int pageIndex , int pageSize )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | roleName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

### GetWatchCount
- **Endpoint / Signature:** `public int GetWatchCount ( int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### IsActiveUser
- **Endpoint / Signature:** `public bool IsActiveUser ( string username )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | username | `System String` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

### RegisterUser
- **Endpoint / Signature:** `public void RegisterUser ( string actingUserName , UserInput input , bool validateOnly , Dictionary < string , Object > options )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | validateOnly | `System Boolean` | (Not documented in source) |
  | options | `System.Collections.Generic Dictionary String , Object` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### RemoveUserFromRole
- **Endpoint / Signature:** `public void RemoveUserFromRole ( string actingUserName , string userName , string roleName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | roleName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### RemoveWatch
- **Endpoint / Signature:** `public void RemoveWatch ( string actingUserName , string userName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SearchConsignors
- **Endpoint / Signature:** `public Page < Consignor > SearchConsignors ( string actingUserName , string sellerUserName , string searchType , string searchTerm , string status , string sortColumn , bool sortDescending , int pageIndex , int pageSize )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sellerUserName | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | status | `System String` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | sortDescending | `System Boolean` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SearchUsers
- **Endpoint / Signature:** `public Page < User > SearchUsers ( string actingUserName , int Id , string searchUserName , string searchFirstName , string searchLastName , string searchEmail , string searchStatus , string searchRole , string sortColumn , bool sortDescending , int pageIndex , int pageSize )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | Id | `System Int32` | (Not documented in source) |
  | searchUserName | `System String` | (Not documented in source) |
  | searchFirstName | `System String` | (Not documented in source) |
  | searchLastName | `System String` | (Not documented in source) |
  | searchEmail | `System String` | (Not documented in source) |
  | searchStatus | `System String` | (Not documented in source) |
  | searchRole | `System String` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | sortDescending | `System Boolean` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

### SendNeedsAdminApprovalEmail
- **Endpoint / Signature:** `public void SendNeedsAdminApprovalEmail ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SendPasswordResetEmail
- **Endpoint / Signature:** `public void SendPasswordResetEmail ( string actingUserName , string email )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | email | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SendUserMessage
- **Endpoint / Signature:** `public int SendUserMessage ( string actingUserName , string sendingUser , string receivingUser , string subject , string body , int ? listingId , int ? masterMessageID = null )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | sendingUser | `System String` | (Not documented in source) |
  | receivingUser | `System String` | (Not documented in source) |
  | subject | `System String` | (Not documented in source) |
  | body | `System String` | (Not documented in source) |
  | listingId | `System Nullable Int32` | (Not documented in source) |
  | masterMessageID | `System Nullable Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### SendUserVerificationEmail
- **Endpoint / Signature:** `public void SendUserVerificationEmail ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetBillingCreditCardForUser
- **Endpoint / Signature:** `public void SetBillingCreditCardForUser ( string actingUserName , string userName , int creditCardID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | creditCardID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetLastActivityDate
- **Endpoint / Signature:** `public void SetLastActivityDate ( string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetPrimaryAddressForUser
- **Endpoint / Signature:** `public void SetPrimaryAddressForUser ( string actingUserName , string userName , int addressID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | addressID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetUserActive
- **Endpoint / Signature:** `public void SetUserActive ( string actingUserName , string userName , bool active )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | active | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### SetUsersIPAddress
- **Endpoint / Signature:** `public void SetUsersIPAddress ( string actingUserName , string userName , string ipAddress )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | ipAddress | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateAddress
- **Endpoint / Signature:** `public int UpdateAddress ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

### UpdateAllUserDetails
- **Endpoint / Signature:** `public void UpdateAllUserDetails ( string actingUserName , UserInput input , bool validateOnly )`
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

### UpdateConsignor
- **Endpoint / Signature:** `public void UpdateConsignor ( string actingUserName , Consignor consignor )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignor | `vendor.framework.DTO Consignor` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateConsignorFromUserInput
- **Endpoint / Signature:** `public void UpdateConsignorFromUserInput ( string actingUserName , int consignorId , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignorId | `System Int32` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateProperties
- **Endpoint / Signature:** `public void UpdateProperties ( string actingUserName , string userName , List < CustomProperty > properties , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | properties | `System.Collections.Generic List CustomProperty` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateSalesTaxRates
- **Endpoint / Signature:** `public void UpdateSalesTaxRates ( string actingUserName , List < SalesTaxRate > rates )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | rates | `System.Collections.Generic List SalesTaxRate` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateUser
- **Endpoint / Signature:** `public void UpdateUser ( string actingUserName , User user )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | user | `vendor.framework.DTO User` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UpdateUserCulture
- **Endpoint / Signature:** `public void UpdateUserCulture ( string actingUserName , string userName , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UserService
- **Endpoint / Signature:** `public UserService ()`
- **Description:** Initializes a new instance of the UserService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### UserService
- **Endpoint / Signature:** `public UserService ( IDataContext data , INotifierService notifier )`
- **Description:** Initializes a new instance of the UserService class
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | data | `vendor.framework.DAL IDataContext` | (Not documented in source) |
  | notifier | `vendor.framework.Services INotifierService` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

### VerifyUser
- **Endpoint / Signature:** `public bool VerifyUser ( string username , string verificationCode , out ReasonCode reasonCode )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | username | `System String` | (Not documented in source) |
  | verificationCode | `System String` | (Not documented in source) |
  | reasonCode | `vendor.framework.DTO ReasonCode` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented
