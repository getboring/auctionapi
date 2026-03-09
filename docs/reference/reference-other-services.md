# Other Services

## EmailService

**Namespace:** `vendor.framework.MVC`

#### Overview
Initializes a new instance of the EmailService class

#### Methods

#### EmailService
- **Endpoint / Signature:** `public EmailService ()`
- **Description:** Initializes a new instance of the EmailService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SendAsync
- **Endpoint / Signature:** `public Task SendAsync ( IdentityMessage message )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | message | `IdentityMessage` | (Not documented in source) |
- **Returns:** Task
- **Exceptions / Errors:**
  None documented



---

## SchedulerService

**Namespace:** `vendor.framework.BLL.ServiceImplementations`

#### Overview
Initializes a new instance of the SchedulerService class

#### Methods

#### SchedulerService
- **Endpoint / Signature:** `public SchedulerService ()`
- **Description:** Initializes a new instance of the SchedulerService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SchedulerService
- **Endpoint / Signature:** `public SchedulerService ( IDataContext data , IAccountingService accounting , ICommonService common , ISiteService site , IEventService auctionEvent , IQueueManager queueManager , INotifierService notifier )`
- **Description:** Initializes a new instance of the SchedulerService class
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | data | `vendor.framework.DAL IDataContext` | (Not documented in source) |
  | accounting | `vendor.framework.Services IAccountingService` | (Not documented in source) |
  | common | `vendor.framework.Services ICommonService` | (Not documented in source) |
  | site | `vendor.framework.Services ISiteService` | (Not documented in source) |
  | auctionEvent | `vendor.framework.Services IEventService` | (Not documented in source) |
  | queueManager | `vendor.framework.Queueing IQueueManager` | (Not documented in source) |
  | notifier | `vendor.framework.Services INotifierService` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### StartThreads
- **Endpoint / Signature:** `public void StartThreads ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### StartThreads
- **Endpoint / Signature:** `public void StartThreads ( string appRootPath )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | appRootPath | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### StopThreads
- **Endpoint / Signature:** `public void StopThreads ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## CommonService

**Namespace:** `vendor.framework.BLL.ServiceImplementations`

#### Overview
Initializes a new instance of the CommonService class

#### Methods

#### AddChildCategory
- **Endpoint / Signature:** `public void AddChildCategory ( string actingUserName , Category newCategory )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | newCategory | `vendor.framework.DTO Category` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddCustomField
- **Endpoint / Signature:** `public int AddCustomField ( string actingUserName , CustomField customField )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customField | `vendor.framework.DTO CustomField` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### AddEnumeration
- **Endpoint / Signature:** `public void AddEnumeration ( string actingUserName , int customFieldID , string Name , string Title , string Value , bool Enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
  | Title | `System String` | (Not documented in source) |
  | Value | `System String` | (Not documented in source) |
  | Enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddMedia
- **Endpoint / Signature:** `public void AddMedia ( string actingUserName , Media media )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | media | `vendor.framework.DTO.Media Media` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AlphaSortCategories
- **Endpoint / Signature:** `public void AlphaSortCategories ( string actingUserName , int parentCategoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | parentCategoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AssignFieldToCategories
- **Endpoint / Signature:** `public void AssignFieldToCategories ( string actingUserName , int customFieldID , int [] categoryIds )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | categoryIds | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AssignFieldToCategoryAndDescendants
- **Endpoint / Signature:** `public void AssignFieldToCategoryAndDescendants ( string actingUserName , int customFieldID , int categoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CleanupSignalRConversations
- **Endpoint / Signature:** `public void CleanupSignalRConversations ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### ClearCache
- **Endpoint / Signature:** `public void ClearCache ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CommonService
- **Endpoint / Signature:** `public CommonService ()`
- **Description:** Initializes a new instance of the CommonService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CommonService
- **Endpoint / Signature:** `public CommonService ( IDataContext data )`
- **Description:** Initializes a new instance of the CommonService class
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | data | `vendor.framework.DAL IDataContext` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CreatePropertyBag
- **Endpoint / Signature:** `public PropertyBag CreatePropertyBag ( Dictionary < string , string > properties )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | properties | `System.Collections.Generic Dictionary String , String` | (Not documented in source) |
- **Returns:** PropertyBag
- **Exceptions / Errors:**
  None documented

#### DeleteCategory
- **Endpoint / Signature:** `public void DeleteCategory ( string actingUserName , int categoryID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteEnum
- **Endpoint / Signature:** `public void DeleteEnum ( string actingUserName , int enumID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | enumID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteExpiredOriginalMediasNow
- **Endpoint / Signature:** `public void DeleteExpiredOriginalMediasNow ( string actingUserName , string appRootPath )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | appRootPath | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteField
- **Endpoint / Signature:** `public void DeleteField ( string actingUserName , int fieldID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | fieldID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteMedia
- **Endpoint / Signature:** `public void DeleteMedia ( string actingUserName , Guid guid )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | guid | `System Guid` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteMediaVariation
- **Endpoint / Signature:** `public void DeleteMediaVariation ( string actingUserName , Guid guid , string variationName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | guid | `System Guid` | (Not documented in source) |
  | variationName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeletePropertyBag
- **Endpoint / Signature:** `public void DeletePropertyBag ( int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteRegion
- **Endpoint / Signature:** `public void DeleteRegion ( string actingUserName , int regionID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | regionID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetAllFields
- **Endpoint / Signature:** `public List < CustomField > GetAllFields ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAttributeData
- **Endpoint / Signature:** `public Dictionary < string , string > GetAttributeData ( string type , string context )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | type | `System String` | (Not documented in source) |
  | context | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetAttributes
- **Endpoint / Signature:** `public Page < Attribute > GetAttributes ( string type , string context , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | type | `System String` | (Not documented in source) |
  | context | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetCategoriesByCustomFieldID
- **Endpoint / Signature:** `public List < Category > GetCategoriesByCustomFieldID ( int customFieldID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | customFieldID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCategoryByID
- **Endpoint / Signature:** `public Category GetCategoryByID ( int categoryID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | categoryID | `System Int32` | (Not documented in source) |
- **Returns:** Category
- **Exceptions / Errors:**
  None documented

#### GetCategoryByName
- **Endpoint / Signature:** `public Category GetCategoryByName ( string name , string type = null )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | name | `System String` | (Not documented in source) |
  | type | `System String` | (Not documented in source) |
- **Returns:** Category
- **Exceptions / Errors:**
  None documented

#### GetCategoryCounts
- **Endpoint / Signature:** `public Dictionary < int , int > GetCategoryCounts ( List < string > categoryIDs , string statuses , string seller )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | categoryIDs | `System.Collections.Generic List String` | (Not documented in source) |
  | statuses | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetCategoryHierarchy
- **Endpoint / Signature:** `public List < Category > GetCategoryHierarchy ( int rootID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | rootID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCategoryPath
- **Endpoint / Signature:** `public List < Category > GetCategoryPath ( int leafID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | leafID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCategoryUsages
- **Endpoint / Signature:** `public int [] GetCategoryUsages ( string actingUserName , int categoryID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryID | `System Int32` | (Not documented in source) |
- **Returns:**
- **Exceptions / Errors:**
  None documented

#### GetChildCategories
- **Endpoint / Signature:** `public List < Category > GetChildCategories ( int parentCategoryID , bool includeRelatedCustomFields )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | parentCategoryID | `System Int32` | (Not documented in source) |
  | includeRelatedCustomFields | `System Boolean` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCustomFieldByID
- **Endpoint / Signature:** `public CustomField GetCustomFieldByID ( int customFieldID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | customFieldID | `System Int32` | (Not documented in source) |
- **Returns:** CustomField
- **Exceptions / Errors:**
  None documented

#### GetCustomFields
- **Endpoint / Signature:** `public Page < CustomField > GetCustomFields ( string groupName , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | groupName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetDalDttm
- **Endpoint / Signature:** `public DateTime GetDalDttm ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** DateTime
- **Exceptions / Errors:**
  None documented

#### GetEditableAttributes
- **Endpoint / Signature:** `public Page < Attribute > GetEditableAttributes ( string actingUserName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetFieldsByCategoryID
- **Endpoint / Signature:** `public List < CustomField > GetFieldsByCategoryID ( int categoryID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | categoryID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetGenericReportResults
- **Endpoint / Signature:** `public Page < ReportRow > GetGenericReportResults ( string actingUserName , string reportProcName , Dictionary < string , string > argList , UserInput input , int pageIndex , int pageSize , string sortColumn , bool sortDescending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | reportProcName | `System String` | (Not documented in source) |
  | argList | `System.Collections.Generic Dictionary String , String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | sortDescending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetLimitedCategoryHierarchy
- **Endpoint / Signature:** `public List < Category > GetLimitedCategoryHierarchy ( int rootID , int depth )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | rootID | `System Int32` | (Not documented in source) |
  | depth | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetLogEntries
- **Endpoint / Signature:** `public Page < LogEntry > GetLogEntries ( string actingUserName , string functionalArea , string severity , DateTime ? utcFromDate , DateTime ? utcToDate , string searchTerm , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | functionalArea | `System String` | (Not documented in source) |
  | severity | `System String` | (Not documented in source) |
  | utcFromDate | `System Nullable DateTime` | (Not documented in source) |
  | utcToDate | `System Nullable DateTime` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetLogEntryOptions
- **Endpoint / Signature:** `public void GetLogEntryOptions ( out Dictionary < string , int > severityOptions , out Dictionary < string , int > areaOptions )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | severityOptions | `System.Collections.Generic Dictionary String , Int32` | (Not documented in source) |
  | areaOptions | `System.Collections.Generic Dictionary String , Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetMediaByGUID
- **Endpoint / Signature:** `public Media GetMediaByGUID ( string actingUserName , Guid mediaGuid )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | mediaGuid | `System Guid` | (Not documented in source) |
- **Returns:** Media
- **Exceptions / Errors:**
  None documented

#### GetMediaByID
- **Endpoint / Signature:** `public Media GetMediaByID ( string actingUserName , int mediaID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | mediaID | `System Int32` | (Not documented in source) |
- **Returns:** Media
- **Exceptions / Errors:**
  None documented

#### GetPropertyBag
- **Endpoint / Signature:** `public PropertyBag GetPropertyBag ( int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | id | `System Int32` | (Not documented in source) |
- **Returns:** PropertyBag
- **Exceptions / Errors:**
  None documented

#### GetReportByID
- **Endpoint / Signature:** `public Report GetReportByID ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** Report
- **Exceptions / Errors:**
  None documented

#### GetSystemInfo
- **Endpoint / Signature:** `public SystemInfo GetSystemInfo ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** SystemInfo
- **Exceptions / Errors:**
  None documented

#### GetVersionInfo
- **Endpoint / Signature:** `public Dictionary < string , string > GetVersionInfo ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### Initialize
- **Endpoint / Signature:** `public bool Initialize ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

#### MoveCategoryDown
- **Endpoint / Signature:** `public void MoveCategoryDown ( string actingUserName , int categoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### MoveCategoryUp
- **Endpoint / Signature:** `public void MoveCategoryUp ( string actingUserName , int categoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetAttributeData
- **Endpoint / Signature:** `public void SetAttributeData ( string actingUserName , string editMode , string type , string context , Dictionary < string , string > data )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | editMode | `System String` | (Not documented in source) |
  | type | `System String` | (Not documented in source) |
  | context | `System String` | (Not documented in source) |
  | data | `System.Collections.Generic Dictionary String , String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetAttributes
- **Endpoint / Signature:** `public void SetAttributes ( string actingUserName , List < Attribute > attributes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | attributes | `System.Collections.Generic List Attribute` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCategoryMetaData
- **Endpoint / Signature:** `public void SetCategoryMetaData ( string actingUserName , int categoryID , string metaKeywords , string metaDescription , string pageTitle , string pageContent )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryID | `System Int32` | (Not documented in source) |
  | metaKeywords | `System String` | (Not documented in source) |
  | metaDescription | `System String` | (Not documented in source) |
  | pageTitle | `System String` | (Not documented in source) |
  | pageContent | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCategoryName
- **Endpoint / Signature:** `public void SetCategoryName ( string actingUserName , int categoryId , string categoryName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
  | categoryName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetMediaStatus
- **Endpoint / Signature:** `public void SetMediaStatus ( string actingUserName , Guid guid , string status )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | guid | `System Guid` | (Not documented in source) |
  | status | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### TruncateLogEntries
- **Endpoint / Signature:** `public void TruncateLogEntries ( string actingUserName , int days )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | days | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UnassignFieldFromCategories
- **Endpoint / Signature:** `public void UnassignFieldFromCategories ( string actingUserName , int customFieldID , int [] categoryIds )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | categoryIds | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UnassignFieldFromCategoryAndDescendants
- **Endpoint / Signature:** `public void UnassignFieldFromCategoryAndDescendants ( string actingUserName , int customFieldID , int categoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateCategory
- **Endpoint / Signature:** `public void UpdateCategory ( string actingUserName , Category category )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | category | `vendor.framework.DTO Category` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateCustomField
- **Endpoint / Signature:** `public void UpdateCustomField ( string actingUserName , CustomField customField )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customField | `vendor.framework.DTO CustomField` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateCustomFieldDisplayOrder
- **Endpoint / Signature:** `public void UpdateCustomFieldDisplayOrder ( string actingUserName , CustomField customField )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customField | `vendor.framework.DTO CustomField` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdatePropertyBag
- **Endpoint / Signature:** `public void UpdatePropertyBag ( PropertyBag propertyBag )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | propertyBag | `vendor.framework.DTO PropertyBag` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## SiteService

**Namespace:** `vendor.framework.BLL.ServiceImplementations`

#### Overview
Initializes a new instance of the SiteService class

#### Methods

#### AddBanner
- **Endpoint / Signature:** `public Banner AddBanner ( string actingUserName , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Banner
- **Exceptions / Errors:**
  None documented

#### AddContentForCulture
- **Endpoint / Signature:** `public void AddContentForCulture ( string actingUserName , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddCustomCurrency
- **Endpoint / Signature:** `public void AddCustomCurrency ( string actingUserName , CustomCurrency customCurrency )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customCurrency | `vendor.framework.DTO CustomCurrency` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddDecoration
- **Endpoint / Signature:** `public void AddDecoration ( string actingUserName , string Name , string Description , decimal Amount , string FormatString , string ValidFields , bool PayToProceed )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Amount | `System Decimal` | (Not documented in source) |
  | FormatString | `System String` | (Not documented in source) |
  | ValidFields | `System String` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddEventFee
- **Endpoint / Signature:** `public void AddEventFee ( string actingUserName , int ListingType , int Event , bool PayToProceed , string Description , string Name )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | ListingType | `System Int32` | (Not documented in source) |
  | Event | `System Int32` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddFeeTier
- **Endpoint / Signature:** `public void AddFeeTier ( string actingUserName , int feeScheduleID , decimal LowerBoundInclusive , decimal UpperBoundExclusive , decimal Value , string ValueType )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | feeScheduleID | `System Int32` | (Not documented in source) |
  | LowerBoundInclusive | `System Decimal` | (Not documented in source) |
  | UpperBoundExclusive | `System Decimal` | (Not documented in source) |
  | Value | `System Decimal` | (Not documented in source) |
  | ValueType | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddShippingMethods
- **Endpoint / Signature:** `public void AddShippingMethods ( string actingUserName , List < string > newShippingMethodNames )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | newShippingMethodNames | `System.Collections.Generic List String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddSiteProperty
- **Endpoint / Signature:** `public int AddSiteProperty ( string actingUserName , CustomProperty siteProperty )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | siteProperty | `vendor.framework.DTO CustomProperty` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### AddState
- **Endpoint / Signature:** `public void AddState ( string actingUserName , State newState )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | newState | `vendor.framework.DTO State` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CreateUserContent
- **Endpoint / Signature:** `public void CreateUserContent ( string actingUserName , string name , bool useHTMLEditor )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | name | `System String` | (Not documented in source) |
  | useHTMLEditor | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteBanner
- **Endpoint / Signature:** `public void DeleteBanner ( string actingUserName , int bannerId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | bannerId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteContentForCulture
- **Endpoint / Signature:** `public void DeleteContentForCulture ( string actingUserName , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteCustomCurrency
- **Endpoint / Signature:** `public void DeleteCustomCurrency ( string actingUserName , string currencyCode )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | currencyCode | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteDecoration
- **Endpoint / Signature:** `public void DeleteDecoration ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteEventFee
- **Endpoint / Signature:** `public void DeleteEventFee ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteFeeTier
- **Endpoint / Signature:** `public void DeleteFeeTier ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteState
- **Endpoint / Signature:** `public void DeleteState ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteUserContent
- **Endpoint / Signature:** `public void DeleteUserContent ( string actingUserName , string name )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | name | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetAdminSummaryCounts
- **Endpoint / Signature:** `public Dictionary < string , int > GetAdminSummaryCounts ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetAllBanners
- **Endpoint / Signature:** `public Page < Banner > GetAllBanners ( string bannerLocation , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | bannerLocation | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetAllContent
- **Endpoint / Signature:** `public List < Content > GetAllContent ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAllCountries
- **Endpoint / Signature:** `public List < Country > GetAllCountries ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAllStates
- **Endpoint / Signature:** `public List < State > GetAllStates ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetBannerById
- **Endpoint / Signature:** `public Banner GetBannerById ( int bannerId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | bannerId | `System Int32` | (Not documented in source) |
- **Returns:** Banner
- **Exceptions / Errors:**
  None documented

#### GetContentByID
- **Endpoint / Signature:** `public Content GetContentByID ( int contentID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | contentID | `System Int32` | (Not documented in source) |
- **Returns:** Content
- **Exceptions / Errors:**
  None documented

#### GetContentByName
- **Endpoint / Signature:** `public string GetContentByName ( string name )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | name | `System String` | (Not documented in source) |
- **Returns:** String
- **Exceptions / Errors:**
  None documented

#### GetCreditCardTypes
- **Endpoint / Signature:** `public List < ListItem > GetCreditCardTypes ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCurrencies
- **Endpoint / Signature:** `public List < Currency > GetCurrencies ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCustomCurrencies
- **Endpoint / Signature:** `public List < CustomCurrency > GetCustomCurrencies ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetDecorations
- **Endpoint / Signature:** `public List < Decoration > GetDecorations ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetEvents
- **Endpoint / Signature:** `public List < ListItem > GetEvents ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetFeeProperties
- **Endpoint / Signature:** `public List < FeeProperty > GetFeeProperties ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetFeeSchedules
- **Endpoint / Signature:** `public List < FeeSchedule > GetFeeSchedules ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetLanguages
- **Endpoint / Signature:** `public List < Language > GetLanguages ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetLocations
- **Endpoint / Signature:** `public List < Location > GetLocations ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetRandomBanners
- **Endpoint / Signature:** `public List < Banner > GetRandomBanners ( string bannerLocation , int quantityNeeded , List < Category > categories )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | bannerLocation | `System String` | (Not documented in source) |
  | quantityNeeded | `System Int32` | (Not documented in source) |
  | categories | `System.Collections.Generic List Category` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetShippingMethods
- **Endpoint / Signature:** `public List < ShippingMethod > GetShippingMethods ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetSiteProperties
- **Endpoint / Signature:** `public List < CustomProperty > GetSiteProperties ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### ParseNewStateData
- **Endpoint / Signature:** `public List < State > ParseNewStateData ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### SaveCurrencyConversions
- **Endpoint / Signature:** `public void SaveCurrencyConversions ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetContent
- **Endpoint / Signature:** `public void SetContent ( string actingUserName , Content content )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | content | `vendor.framework.DTO Content` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCountryEnabled
- **Endpoint / Signature:** `public void SetCountryEnabled ( string actingUserName , int countryID , bool enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | countryID | `System Int32` | (Not documented in source) |
  | enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCreditCardTypes
- **Endpoint / Signature:** `public void SetCreditCardTypes ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCurrencies
- **Endpoint / Signature:** `public void SetCurrencies ( string actingUserName , string currencyCodes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | currencyCodes | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetLanguages
- **Endpoint / Signature:** `public void SetLanguages ( string actingUserName , string languageCodes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | languageCodes | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetStateEnabled
- **Endpoint / Signature:** `public void SetStateEnabled ( string actingUserName , int stateID , bool enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | stateID | `System Int32` | (Not documented in source) |
  | enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SiteService
- **Endpoint / Signature:** `public SiteService ()`
- **Description:** Initializes a new instance of the SiteService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SiteService
- **Endpoint / Signature:** `public SiteService ( IDataContext data )`
- **Description:** Initializes a new instance of the SiteService class
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | data | `vendor.framework.DAL IDataContext` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateAllFeeProperties
- **Endpoint / Signature:** `public void UpdateAllFeeProperties ( string actingUserName , List < FeeProperty > allFeeProperties )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | allFeeProperties | `System.Collections.Generic List FeeProperty` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateBanner
- **Endpoint / Signature:** `public Banner UpdateBanner ( string actingUserName , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Banner
- **Exceptions / Errors:**
  None documented

#### UpdateCountry
- **Endpoint / Signature:** `public void UpdateCountry ( string actingUserName , Country country )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | country | `vendor.framework.DTO Country` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateDecoration
- **Endpoint / Signature:** `public void UpdateDecoration ( string actingUserName , int id , string Name , string Description , decimal Amount , string FormatString , string ValidFields , bool PayToProceed )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Amount | `System Decimal` | (Not documented in source) |
  | FormatString | `System String` | (Not documented in source) |
  | ValidFields | `System String` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateEventFee
- **Endpoint / Signature:** `public void UpdateEventFee ( string actingUserName , int id , int ListingType , int Event , bool PayToProceed , string Description , string Name )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | ListingType | `System Int32` | (Not documented in source) |
  | Event | `System Int32` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateFeeTier
- **Endpoint / Signature:** `public void UpdateFeeTier ( string actingUserName , int id , decimal LowerBoundInclusive , decimal UpperBoundExclusive , decimal Value , string ValueType )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | LowerBoundInclusive | `System Decimal` | (Not documented in source) |
  | UpperBoundExclusive | `System Decimal` | (Not documented in source) |
  | Value | `System Decimal` | (Not documented in source) |
  | ValueType | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateLocation
- **Endpoint / Signature:** `public void UpdateLocation ( string actingUserName , int id , string Description , decimal Amount , bool PayToProceed )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Amount | `System Decimal` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateProperties
- **Endpoint / Signature:** `public void UpdateProperties ( string actingUserName , List < CustomProperty > properties , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | properties | `System.Collections.Generic List CustomProperty` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateProperty
- **Endpoint / Signature:** `public void UpdateProperty ( string actingUserName , string propertyName , string newValue , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | propertyName | `System String` | (Not documented in source) |
  | newValue | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateShippingMethods
- **Endpoint / Signature:** `public void UpdateShippingMethods ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateState
- **Endpoint / Signature:** `public void UpdateState ( string actingUserName , State state )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | state | `vendor.framework.DTO State` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## IAccountingService

**Namespace:** `vendor.framework.Services`

#### Overview
(Not documented in source)

#### Methods

#### AddEventFee
- **Endpoint / Signature:** `void AddEventFee ( string actingUserName , int eventId , decimal feeAmount , string feeDescription , string additionalInfo )`
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

#### AddFees
- **Endpoint / Signature:** `bool AddFees ( string actingUserName , string eventName , Dictionary < string , string > properties , Listing oldListing , Listing newListing , ListingAction listingAction , Offer acceptedOffer )`
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

#### AddInvoiceAdjustment
- **Endpoint / Signature:** `void AddInvoiceAdjustment ( string actingUserName , int invoiceId , UserInput userInput )`
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

#### AddLineItemToConsignorStatement
- **Endpoint / Signature:** `void AddLineItemToConsignorStatement ( string actingUserName , int invoiceID , int lineItemID )`
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

#### AddLineItemToInvoice
- **Endpoint / Signature:** `void AddLineItemToInvoice ( string actingUserName , int invoiceID , int lineItemID )`
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

#### AddMiscSiteFee
- **Endpoint / Signature:** `int AddMiscSiteFee ( string actingUserName , string userName , decimal feeAmount , string feeDescription , int ? listingId , string additionalInfo )`
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

#### AddStatementAdjustment
- **Endpoint / Signature:** `void AddStatementAdjustment ( string actingUserName , int statementID , UserInput userInput )`
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

#### AttemptBatchPayment
- **Endpoint / Signature:** `PaymentProviderResponse AttemptBatchPayment ( string actingUserName , Invoice invoice , out string details )`
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

#### AuthorizePayment
- **Endpoint / Signature:** `PaymentProviderResponse AuthorizePayment ( string actingUserName , string recipientUserName , string payerUserName , decimal paymentAmount , string currencyCode , string paymentProviderName , PaymentParameters parameters )`
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

#### ChargeCreditCardsForAllUnpaidSales
- **Endpoint / Signature:** `void ChargeCreditCardsForAllUnpaidSales ( string actingUserName , string paymentProviderName , out int successCount , out int failedCount )`
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

#### ChargeCreditCardsForAllUnpaidSalesByEvent
- **Endpoint / Signature:** `void ChargeCreditCardsForAllUnpaidSalesByEvent ( string actingUserName , int eventId , string paymentProviderName , out int successCount , out int failedCount )`
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

#### ChargeCreditCardsForAllUnpaidSalesBySeller
- **Endpoint / Signature:** `void ChargeCreditCardsForAllUnpaidSalesBySeller ( string actingUserName , string seller , string paymentProviderName , out int successCount , out int failedCount )`
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

#### CreateAllInvoices
- **Endpoint / Signature:** `int CreateAllInvoices ( string actingUserName , string seller , int ? eventId )`
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

#### CreateConsignorStatementFromLineItem
- **Endpoint / Signature:** `Statement CreateConsignorStatementFromLineItem ( string actingUserName , int statementLineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementLineItemID | `System Int32` | (Not documented in source) |
- **Returns:** Statement
- **Exceptions / Errors:**
  None documented

#### CreateInvoiceFromLineItem
- **Endpoint / Signature:** `Invoice CreateInvoiceFromLineItem ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** Invoice
- **Exceptions / Errors:**
  None documented

#### CreateNewLineItem
- **Endpoint / Signature:** `LineItem CreateNewLineItem ( string actingUserName , LineItem lineItem )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItem | `vendor.framework.DTO LineItem` | (Not documented in source) |
- **Returns:** LineItem
- **Exceptions / Errors:**
  None documented

#### DemandBatchProcessing
- **Endpoint / Signature:** `void DemandBatchProcessing ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DemandSalesBatchProcessing
- **Endpoint / Signature:** `void DemandSalesBatchProcessing ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GenerateAllConsignorStatements
- **Endpoint / Signature:** `int GenerateAllConsignorStatements ( string actingUserName , string sellerUN , int ? eventId )`
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

#### GetAllFeeProperties
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAllStripeCustomerIds
- **Endpoint / Signature:** `Dictionary < int , string > GetAllStripeCustomerIds ( string actingUserName , string buyerUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | buyerUserName | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetAllUnpaidSaleInvoices
- **Endpoint / Signature:** `Page < Invoice > GetAllUnpaidSaleInvoices ( string actingUserName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetBatchPaymentProviders
- **Endpoint / Signature:** `List < string > GetBatchPaymentProviders ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetBatchPaymentStatus
- **Endpoint / Signature:** `BatchPaymentCapability GetBatchPaymentStatus ( string actingUserName , Invoice invoice , out string details )`
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

#### GetConsignorFeeSchedules
- **Endpoint / Signature:** `Dictionary < string , List < ConsignorFeeTier >> GetConsignorFeeSchedules ( string actingUserName , int sellerId , int ? consignorId )`
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

#### GetHistoricalPayerFees
- **Endpoint / Signature:** `Page < Invoice > GetHistoricalPayerFees ( string actingUserName , string payer , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetInvoiceByID
- **Endpoint / Signature:** `Invoice GetInvoiceByID ( string actingUserName , int invoiceID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
- **Returns:** Invoice
- **Exceptions / Errors:**
  None documented

#### GetInvoicesBySeller
- **Endpoint / Signature:** `Page < Invoice > GetInvoicesBySeller ( string actingUserName , string seller , string viewFilter , string searchTerm , string searchType , int ? eventId , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetLineItemByID
- **Endpoint / Signature:** `LineItem GetLineItemByID ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** LineItem
- **Exceptions / Errors:**
  None documented

#### GetLineItemsByInvoice
- **Endpoint / Signature:** `Page < LineItem > GetLineItemsByInvoice ( string actingUserName , int InvoiceID , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetLineItemsByStatement
- **Endpoint / Signature:** `Page < StatementLineItem > GetLineItemsByStatement ( string actingUserName , int statementID , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetLineItemsForListingByPayer
- **Endpoint / Signature:** `Page < LineItem > GetLineItemsForListingByPayer ( string actingUserName , string payer , int listingID , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetLineItemsNeedingFeedbackFor
- **Endpoint / Signature:** `List < LineItem > GetLineItemsNeedingFeedbackFor ( string actingUserName , int listingId , string fromUserName )`
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

#### GetListingLineItemsByPayer
- **Endpoint / Signature:** `Page < LineItem > GetListingLineItemsByPayer ( string actingUserName , string payer , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetListingLineItemsBySeller
- **Endpoint / Signature:** `Page < LineItem > GetListingLineItemsBySeller ( string actingUserName , string seller , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetMySummaryCounts
- **Endpoint / Signature:** `Dictionary < string , int > GetMySummaryCounts ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetNewInvoicesByDate
- **Endpoint / Signature:** `Page < Invoice > GetNewInvoicesByDate ( string actingUserName , DateTime ? fromDate , DateTime ? toDate , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetNextDateTime
- **Endpoint / Signature:** `DateTime GetNextDateTime ( string actingUserName , string period , DateTime time , int day , int date )`
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

#### GetOwnerInvoices
- **Endpoint / Signature:** `Page < Invoice > GetOwnerInvoices ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetPaidInvoicesByDate
- **Endpoint / Signature:** `Page < Invoice > GetPaidInvoicesByDate ( string actingUserName , DateTime ? fromDate , DateTime ? toDate , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetPayerFees
- **Endpoint / Signature:** `Invoice GetPayerFees ( string actingUserName , string payer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | payer | `System String` | (Not documented in source) |
- **Returns:** Invoice
- **Exceptions / Errors:**
  None documented

#### GetPayerInvoices
- **Endpoint / Signature:** `Page < Invoice > GetPayerInvoices ( string actingUserName , string payer , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetPaymentProviderViewsForInvoice
- **Endpoint / Signature:** `Dictionary < string , string > GetPaymentProviderViewsForInvoice ( string actingUserName , Invoice invoice )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoice | `vendor.framework.DTO Invoice` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetSaleBatchPaymentProviderName
- **Endpoint / Signature:** `string GetSaleBatchPaymentProviderName ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** String
- **Exceptions / Errors:**
  None documented

#### GetShippingOptionsForInvoice
- **Endpoint / Signature:** `List < InvoiceShippingOption > GetShippingOptionsForInvoice ( string actingUserName , int invoiceID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetSimilarLineItems
- **Endpoint / Signature:** `List < LineItem > GetSimilarLineItems ( string actingUserName , int invoiceID , ref List < ShippingMethodCounts > shippingMethodCounts )`
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

#### GetStatementByID
- **Endpoint / Signature:** `Statement GetStatementByID ( string actingUserName , int statementID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
- **Returns:** Statement
- **Exceptions / Errors:**
  None documented

#### GetStatementLineItemByID
- **Endpoint / Signature:** `StatementLineItem GetStatementLineItemByID ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** StatementLineItem
- **Exceptions / Errors:**
  None documented

#### GetStripeCustomerId
- **Endpoint / Signature:** `string GetStripeCustomerId ( string actingUserName , string sellerUserName , string buyerUserName )`
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

#### ListingFeesRevenueReport
- **Endpoint / Signature:** `Page < ListingFeesRevenueReportResult > ListingFeesRevenueReport ( string actingUserName , UserInput input , ref int currencyCount , ref decimal totalAmount )`
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

#### PreNotifyAsynchronousPayment
- **Endpoint / Signature:** `void PreNotifyAsynchronousPayment ( string actingUserName , string paymentProviderName , int invoiceID )`
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

#### ProcessAsynchronousPayment
- **Endpoint / Signature:** `PaymentProviderResponse ProcessAsynchronousPayment ( string actingUserName , UserInput request )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | request | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** PaymentProviderResponse
- **Exceptions / Errors:**
  None documented

#### ProcessSynchronousPayment
- **Endpoint / Signature:** `PaymentProviderResponse ProcessSynchronousPayment ( string actingUserName , string paymentProviderName , int invoiceID , PaymentParameters parameters )`
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

#### RefreshAllSiteFees
- **Endpoint / Signature:** `void RefreshAllSiteFees ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### RemoveLineItemFromInvoice
- **Endpoint / Signature:** `bool RemoveLineItemFromInvoice ( string actingUserName , int invoiceID , int lineItemID )`
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

#### RemoveLineItemFromStatement
- **Endpoint / Signature:** `bool RemoveLineItemFromStatement ( string actingUserName , int statementID , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementID | `System Int32` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

#### SalesInvoicesReport
- **Endpoint / Signature:** `Page < SalesInvoicesReportResult > SalesInvoicesReport ( string actingUserName , UserInput input , ref int currencyCount , ref decimal totalAmount )`
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

#### SalesTransactionReport
- **Endpoint / Signature:** `Page < SalesTransactionReportResult > SalesTransactionReport ( string actingUserName , UserInput input , ref int currencyCount , ref decimal totalAmount )`
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

#### SearchStatementLineItemsByConsignor
- **Endpoint / Signature:** `Page < StatementLineItem > SearchStatementLineItemsByConsignor ( string actingUserName , string consignorUserName , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### SearchStatementsByConsignor
- **Endpoint / Signature:** `Page < Statement > SearchStatementsByConsignor ( string actingUserName , string consignorUserName , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### SearchStatementsBySeller
- **Endpoint / Signature:** `Page < Statement > SearchStatementsBySeller ( string actingUserName , string seller , string viewFilter , string searchTerm , string searchType , int ? eventId , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### SetConsignorFeeSchedules
- **Endpoint / Signature:** `void SetConsignorFeeSchedules ( string actingUserName , int sellerId , int ? consignorId , Dictionary < string , List < ConsignorFeeTier >> newFeeSchedules )`
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

#### SetInvoiceArchived
- **Endpoint / Signature:** `void SetInvoiceArchived ( string actingUserName , int invoiceId , bool archived )`
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

#### SetInvoiceBillingAddress
- **Endpoint / Signature:** `void SetInvoiceBillingAddress ( string actingUserName , int invoiceID , int addressID )`
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

#### SetInvoiceEmailed
- **Endpoint / Signature:** `void SetInvoiceEmailed ( string actingUserName , int invoiceId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | invoiceId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetInvoiceLineItemStatus
- **Endpoint / Signature:** `void SetInvoiceLineItemStatus ( string actingUserName , int lineItemId , string status )`
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

#### SetInvoicePaid
- **Endpoint / Signature:** `void SetInvoicePaid ( string actingUserName , int invoiceId , bool paid )`
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

#### SetInvoiceShipped
- **Endpoint / Signature:** `void SetInvoiceShipped ( string actingUserName , int invoiceID , bool shipped )`
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

#### SetInvoiceShippingAddress
- **Endpoint / Signature:** `void SetInvoiceShippingAddress ( string actingUserName , int invoiceID , int addressID )`
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

#### SetInvoiceStatus
- **Endpoint / Signature:** `void SetInvoiceStatus ( string actingUserName , int invoiceID , string status )`
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

#### SetLineItemArchived
- **Endpoint / Signature:** `void SetLineItemArchived ( string actingUserName , int lineItemId , bool archived )`
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

#### SetLineItemArchivedByPayer
- **Endpoint / Signature:** `void SetLineItemArchivedByPayer ( string actingUserName , int lineItemId , bool archived )`
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

#### SetLineItemVoided
- **Endpoint / Signature:** `void SetLineItemVoided ( string actingUserName , int lineItemId , bool voided )`
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

#### SetStatementArchived
- **Endpoint / Signature:** `void SetStatementArchived ( string actingUserName , int statementId , bool archived )`
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

#### SetStatementBillingAddress
- **Endpoint / Signature:** `void SetStatementBillingAddress ( string actingUserName , int statementID , int addressID )`
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

#### SetStatementEmailed
- **Endpoint / Signature:** `void SetStatementEmailed ( string actingUserName , int statementId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | statementId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetStatementLineItemStatus
- **Endpoint / Signature:** `void SetStatementLineItemStatus ( string actingUserName , int lineItemId , string status )`
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

#### SetStatementLineItemVoided
- **Endpoint / Signature:** `void SetStatementLineItemVoided ( string actingUserName , int lineItemId , bool voided )`
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

#### SetStatementPaid
- **Endpoint / Signature:** `void SetStatementPaid ( string actingUserName , int statementID , bool paid )`
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

#### SetStripeCustomerId
- **Endpoint / Signature:** `void SetStripeCustomerId ( string actingUserName , string sellerUserName , string buyerUserName , string customerId )`
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

#### ToggleLineItemBuyersPremiumApplies
- **Endpoint / Signature:** `void ToggleLineItemBuyersPremiumApplies ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### ToggleLineItemTaxable
- **Endpoint / Signature:** `void ToggleLineItemTaxable ( string actingUserName , int lineItemID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lineItemID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateInvoiceBuyersPremium
- **Endpoint / Signature:** `void UpdateInvoiceBuyersPremium ( string actingUserName , int invoiceID , decimal newBuyerPremiumPercent )`
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

#### UpdateInvoiceComments
- **Endpoint / Signature:** `void UpdateInvoiceComments ( string actingUserName , int invoiceID , string comments )`
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

#### UpdateInvoiceProperties
- **Endpoint / Signature:** `void UpdateInvoiceProperties ( string actingUserName , int invoiceID , Dictionary < string , string > properties )`
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

#### UpdateInvoiceShipping
- **Endpoint / Signature:** `void UpdateInvoiceShipping ( string actingUserName , int invoiceID , int shippingOptionID )`
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

#### UpdateStatementComments
- **Endpoint / Signature:** `void UpdateStatementComments ( string actingUserName , int statementID , string comments )`
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



---

## SmsService

**Namespace:** `vendor.framework.MVC`

#### Overview
Initializes a new instance of the SmsService class

#### Methods

#### SendAsync
- **Endpoint / Signature:** `public Task SendAsync ( IdentityMessage message )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | message | `IdentityMessage` | (Not documented in source) |
- **Returns:** Task
- **Exceptions / Errors:**
  None documented

#### SmsService
- **Endpoint / Signature:** `public SmsService ()`
- **Description:** Initializes a new instance of the SmsService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## IEventService

**Namespace:** `vendor.framework.Services`

#### Overview
(Not documented in source)

#### Methods

#### AddEvent
- **Endpoint / Signature:** `void AddEvent ( string actingUserName , string owningUserName , Event auctionEvent )`
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

#### AddIncrement
- **Endpoint / Signature:** `void AddIncrement ( string actingUserName , int eventID , decimal priceLevel , decimal amount )`
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

#### CalculateLotEndDTTMs
- **Endpoint / Signature:** `void CalculateLotEndDTTMs ( string actingUserName , int eventID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CreateEvent
- **Endpoint / Signature:** `int CreateEvent ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### CreateLot
- **Endpoint / Signature:** `bool CreateLot ( string actingUserName , UserInput input , bool notify , out int listingID , bool validateOnly = false )`
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

#### DeleteEvent
- **Endpoint / Signature:** `void DeleteEvent ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteIncrements
- **Endpoint / Signature:** `void DeleteIncrements ( string actingUserName , int eventID , string incrementIDs )`
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

#### DeleteLot
- **Endpoint / Signature:** `void DeleteLot ( string actingUserName , int lotID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### EndEventEarly
- **Endpoint / Signature:** `void EndEventEarly ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### EndLotEarly
- **Endpoint / Signature:** `void EndLotEarly ( string actingUserName , int lotID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### FinalizeDraftValidation
- **Endpoint / Signature:** `void FinalizeDraftValidation ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### FinalizeEventPublication
- **Endpoint / Signature:** `void FinalizeEventPublication ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetEventByIDWithFillLevel
- **Endpoint / Signature:** `Event GetEventByIDWithFillLevel ( string actingUserName , int eventID , string fillLevel )`
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

#### GetEventClosingGroups
- **Endpoint / Signature:** `EventOrganization GetEventClosingGroups ( string actingUserName , string owner , int eventID )`
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

#### GetEventProperties
- **Endpoint / Signature:** `List < CustomProperty > GetEventProperties ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetEventSoftClosingGroups
- **Endpoint / Signature:** `EventOrganization GetEventSoftClosingGroups ( string actingUserName , string owner , int eventID )`
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

#### GetEventSummaryCounts
- **Endpoint / Signature:** `Dictionary < string , decimal > GetEventSummaryCounts ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetEventsByOwnerAndStatusWithFillLevel
- **Endpoint / Signature:** `Page < Event > GetEventsByOwnerAndStatusWithFillLevel ( string actingUserName , string owner , string statuses , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel , DateTime ? createdAfter )`
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

#### GetEventsByStatusWithFillLevel
- **Endpoint / Signature:** `Page < Event > GetEventsByStatusWithFillLevel ( string actingUserName , string statuses , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### GetHomepageAuctionEventsWithFillLevel
- **Endpoint / Signature:** `Page < Event > GetHomepageAuctionEventsWithFillLevel ( string actingUserName , string viewFilter , UserInput input , int pageIndex , int pageSize , string fillLevel )`
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

#### GetIncrements
- **Endpoint / Signature:** `List < Increment > GetIncrements ( string actingUserName , int eventID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetLotByID
- **Endpoint / Signature:** `Lot GetLotByID ( string actingUserName , int lotID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | lotID | `System Int32` | (Not documented in source) |
- **Returns:** Lot
- **Exceptions / Errors:**
  None documented

#### GetLotByIDAndUser
- **Endpoint / Signature:** `Lot GetLotByIDAndUser ( string actingUserName , int lotID , string userName )`
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

#### GetLotByIDAndUserWithFillLevel
- **Endpoint / Signature:** `Lot GetLotByIDAndUserWithFillLevel ( string actingUserName , int lotID , string userName , string fillLevel )`
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

#### GetLotByIDWithFillLevel
- **Endpoint / Signature:** `Lot GetLotByIDWithFillLevel ( string actingUserName , int lotID , string fillLevel )`
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

#### GetLotCountByListingStatus
- **Endpoint / Signature:** `int GetLotCountByListingStatus ( string actingUserName , int eventId , string listingStatus )`
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

#### GetLotIdByLotNumber
- **Endpoint / Signature:** `int GetLotIdByLotNumber ( string actingUserName , int eventId , string lotNumber )`
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

#### GetLotIdByLotOrder
- **Endpoint / Signature:** `int GetLotIdByLotOrder ( string actingUserName , int eventId , int lotOrder )`
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

#### GetLotsByEventWithFillLevel
- **Endpoint / Signature:** `Page < Lot > GetLotsByEventWithFillLevel ( string actingUserName , int eventID , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### GetNextLotClosing
- **Endpoint / Signature:** `int ? GetNextLotClosing ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** Nullable
- **Exceptions / Errors:**
  None documented

#### InitiateEventPublication
- **Endpoint / Signature:** `void InitiateEventPublication ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SearchLotsByEvent
- **Endpoint / Signature:** `Page < Listing > SearchLotsByEvent ( string actingUserName , int eventId , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### SetEventArchived
- **Endpoint / Signature:** `void SetEventArchived ( string actingUserName , int eventId , bool archived )`
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

#### SetEventClosingGroups
- **Endpoint / Signature:** `void SetEventClosingGroups ( string actingUserName , string owner , int eventID , int [][] lotOrganization )`
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

#### SetEventHiddenWhenClosed
- **Endpoint / Signature:** `void SetEventHiddenWhenClosed ( string actingUserName , int eventId , bool hiddenWhenClosed )`
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

#### SetEventSoftClosingGroups
- **Endpoint / Signature:** `void SetEventSoftClosingGroups ( string actingUserName , string owner , int eventID , int [][] lotOrganization )`
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

#### SetLotNumber
- **Endpoint / Signature:** `void SetLotNumber ( string actingUserName , int lotId , string newLotNumber )`
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

#### StartEventEarly
- **Endpoint / Signature:** `void StartEventEarly ( string actingUserName , int eventId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | eventId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### TransferEventAndLotOwnershipToNewUser
- **Endpoint / Signature:** `void TransferEventAndLotOwnershipToNewUser ( string actingUserName , int eventId , string newEventOwnerUserName )`
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

#### UpdateEvent
- **Endpoint / Signature:** `void UpdateEvent ( string actingUserName , Event auctionEvent )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | auctionEvent | `vendor.framework.DTO Event` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateEventWithUserInput
- **Endpoint / Signature:** `void UpdateEventWithUserInput ( string actingUserName , UserInput input , bool validateOnly )`
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

#### UpdateIncrements
- **Endpoint / Signature:** `void UpdateIncrements ( string actingUserName , int eventID , List < Increment > increments )`
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

#### UpdateLotWithUserInput
- **Endpoint / Signature:** `bool UpdateLotWithUserInput ( string actingUserName , Lot lot , UserInput userInput )`
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

#### ValidateLot
- **Endpoint / Signature:** `void ValidateLot ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## IListingService

**Namespace:** `vendor.framework.Services`

#### Overview
(Not documented in source)

#### Methods

#### AcceptOffer
- **Endpoint / Signature:** `void AcceptOffer ( UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddCustomPropertiesToListingType
- **Endpoint / Signature:** `void AddCustomPropertiesToListingType ( string actingUserName , string listingTypeName , string scope , List < CustomProperty > properties )`
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

#### AddIncrement
- **Endpoint / Signature:** `void AddIncrement ( string actingUserName , string listingType , decimal priceLevel , decimal amount )`
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

#### AddListingRegion
- **Endpoint / Signature:** `void AddListingRegion ( string actingUserName , int listingId , int regionId )`
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

#### AddListingTypeAllowedMedia
- **Endpoint / Signature:** `void AddListingTypeAllowedMedia ( string actingUserName , string listingTypeName , string mediaAssetName , string scope )`
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

#### AddListingTypeFeeProvider
- **Endpoint / Signature:** `void AddListingTypeFeeProvider ( string actingUserName , string listingTypeName , string providerName , bool enabled )`
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

#### AnswerListingQuestion
- **Endpoint / Signature:** `void AnswerListingQuestion ( string actingUserName , int questionId , string answerText )`
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

#### AskListingQuestion
- **Endpoint / Signature:** `void AskListingQuestion ( string actingUserName , string userName , int listingId , string questionText , out int newListingQuestionId )`
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

#### AssignListingTypeToCategory
- **Endpoint / Signature:** `void AssignListingTypeToCategory ( string actingUserName , int categoryID , int listingTypeID )`
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

#### CalculateFinalBuyerFee
- **Endpoint / Signature:** `decimal CalculateFinalBuyerFee ( string actingUserName , string listingTypeName , decimal price , string currencyCode , int purchaseQuantity , int primaryCategoryId )`
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

#### CalculateFinalFee
- **Endpoint / Signature:** `decimal CalculateFinalFee ( string actingUserName , string listingTypeName , decimal price , string currencyCode , int primaryCategoryId )`
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

#### CalculatePostFee
- **Endpoint / Signature:** `decimal CalculatePostFee ( string actingUserName , string listingTypeName , decimal price , string currencyCode , int primaryCategoryId )`
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

#### CreateListing
- **Endpoint / Signature:** `bool CreateListing ( string actingUserName , UserInput userInput , bool notify , out int listingID , bool validateOnly = false )`
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

#### DeclineOffer
- **Endpoint / Signature:** `void DeclineOffer ( UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteIncrements
- **Endpoint / Signature:** `void DeleteIncrements ( string actingUserName , string incrementIDs )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | incrementIDs | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteListing
- **Endpoint / Signature:** `void DeleteListing ( string actingUserName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteListingQuestion
- **Endpoint / Signature:** `void DeleteListingQuestion ( string actingUserName , int questionId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | questionId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteListingTypeAllowedMedia
- **Endpoint / Signature:** `void DeleteListingTypeAllowedMedia ( string actingUserName , string listingTypeName , string mediaAssetName , string scope )`
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

#### DeleteListingTypeFeeProvider
- **Endpoint / Signature:** `void DeleteListingTypeFeeProvider ( string actingUserName , string listingTypeName , string providerName )`
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

#### EndListingEarly
- **Endpoint / Signature:** `void EndListingEarly ( string actingUserName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### ExtendAllEndDTTM
- **Endpoint / Signature:** `void ExtendAllEndDTTM ( string actingUserName , int minutes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | minutes | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### ExtendEndDTTMForListing
- **Endpoint / Signature:** `void ExtendEndDTTMForListing ( string actingUserName , int listingID , int minutes )`
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

#### GetAcceptedListingActions
- **Endpoint / Signature:** `Page < ListingAction > GetAcceptedListingActions ( string actingUserName , int listingID , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetAcceptedListingActionsByUser
- **Endpoint / Signature:** `Page < ListingAction > GetAcceptedListingActionsByUser ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetActiveListingsByOwner
- **Endpoint / Signature:** `Page < Listing > GetActiveListingsByOwner ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetActiveListingsByOwnerWithFillLevel
- **Endpoint / Signature:** `Page < Listing > GetActiveListingsByOwnerWithFillLevel ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### GetAllCategoryListingTypes
- **Endpoint / Signature:** `List < ListingType > GetAllCategoryListingTypes ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAllListingActions
- **Endpoint / Signature:** `Page < ListingAction > GetAllListingActions ( string actingUserName , int listingID , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetAllListingTypes
- **Endpoint / Signature:** `List < ListingType > GetAllListingTypes ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCountOfListingsByMediaId
- **Endpoint / Signature:** `int GetCountOfListingsByMediaId ( int mediaId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | mediaId | `System Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### GetCurrentPrice
- **Endpoint / Signature:** `CurrentPrice GetCurrentPrice ( string actingUserName , int listingID , string localCurrency )`
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

#### GetEndedListingsByOwner
- **Endpoint / Signature:** `Page < Listing > GetEndedListingsByOwner ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetEndedListingsByOwnerWithFillLevel
- **Endpoint / Signature:** `Page < Listing > GetEndedListingsByOwnerWithFillLevel ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### GetIncrements
- **Endpoint / Signature:** `List < Increment > GetIncrements ( string actingUserName , string listingType )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingType | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetLicenseInfo
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** LicenseInfo
- **Exceptions / Errors:**
  None documented

#### GetListingActions
- **Endpoint / Signature:** `Page < ListingAction > GetListingActions ( string actingUserName , int listingID , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetListingByIDAndUserWithFillLevel
- **Endpoint / Signature:** `Listing GetListingByIDAndUserWithFillLevel ( string actingUserName , int listingID , string userName , string fillLevel )`
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

#### GetListingByIDWithFillLevel
- **Endpoint / Signature:** `Listing GetListingByIDWithFillLevel ( string actingUserName , int listingID , string fillLevel )`
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

#### GetListingEndDTTM
- **Endpoint / Signature:** `void GetListingEndDTTM ( int listingId , out DateTime ? utcListingEndDTTM , out DateTime ? utcCurrentDTTM )`
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

#### GetListingExtensionDetails
- **Endpoint / Signature:** `Page < ReportRow > GetListingExtensionDetails ( string actingUserName , int ? eventId , int ? listingId , int pageIndex , int pageSize , string sortColumn , bool sortDescending )`
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

#### GetListingQuestionById
- **Endpoint / Signature:** `ListingQuestion GetListingQuestionById ( string actingUserName , int questionId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | questionId | `System Int32` | (Not documented in source) |
- **Returns:** ListingQuestion
- **Exceptions / Errors:**
  None documented

#### GetListingTypeAllowedMedia
- **Endpoint / Signature:** `List < ListItem > GetListingTypeAllowedMedia ( string listingTypeName , string scope )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingTypeName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetListingTypeFeeProviders
- **Endpoint / Signature:** `List < ListItem > GetListingTypeFeeProviders ( string listingTypeName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingTypeName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetListingTypeFields
- **Endpoint / Signature:** `List < CustomField > GetListingTypeFields ( string listingTypeName , string scope )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingTypeName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetListingTypeProperties
- **Endpoint / Signature:** `List < CustomProperty > GetListingTypeProperties ( string listingTypeName , string scope )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingTypeName | `System String` | (Not documented in source) |
  | scope | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetListingsByIDsWithFillLevel
- **Endpoint / Signature:** `List < Listing > GetListingsByIDsWithFillLevel ( string actingUserName , int [] listingIDs , string fillLevel )`
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

#### GetListingsByLocationWithFillLevel
- **Endpoint / Signature:** `List < Listing > GetListingsByLocationWithFillLevel ( string actingUserName , string locationName , string statuses , int count , string fillLevel )`
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

#### GetListingsBySeller
- **Endpoint / Signature:** `Page < Listing > GetListingsBySeller ( string actingUserName , string seller , string viewFilter , string searchTerm , string searchType , string listingType , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
  | viewFilter | `System String` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | searchType | `System String` | (Not documented in source) |
  | listingType | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
  | fillLevel | `System String` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetListingsNotWonWithFillLevel
- **Endpoint / Signature:** `Page < Listing > GetListingsNotWonWithFillLevel ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### GetListingsWithActiveBidsWithFillLevel
- **Endpoint / Signature:** `Page < Listing > GetListingsWithActiveBidsWithFillLevel ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### GetOfferById
- **Endpoint / Signature:** `Offer GetOfferById ( string actingUserName , int offerId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | offerId | `System Int32` | (Not documented in source) |
- **Returns:** Offer
- **Exceptions / Errors:**
  None documented

#### GetOffersByListingId
- **Endpoint / Signature:** `List < Offer > GetOffersByListingId ( string actingUserName , int listingId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetPendingListingsByOwner
- **Endpoint / Signature:** `Page < Listing > GetPendingListingsByOwner ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetPendingListingsByOwnerWithFillLevel
- **Endpoint / Signature:** `Page < Listing > GetPendingListingsByOwnerWithFillLevel ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### GetQuestionsByListingId
- **Endpoint / Signature:** `List < ListingQuestion > GetQuestionsByListingId ( string actingUserName , int listingId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetUnsuccessfulListingsByOwner
- **Endpoint / Signature:** `Page < Listing > GetUnsuccessfulListingsByOwner ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetUnsuccessfulListingsByOwnerWithFillLevel
- **Endpoint / Signature:** `Page < Listing > GetUnsuccessfulListingsByOwnerWithFillLevel ( string actingUserName , string owner , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### GetUpdateableListingFields
- **Endpoint / Signature:** `Dictionary < string , bool > GetUpdateableListingFields ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetWatchedListings
- **Endpoint / Signature:** `Page < Listing > GetWatchedListings ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetWatchedListingsWithFillLevel
- **Endpoint / Signature:** `Page < Listing > GetWatchedListingsWithFillLevel ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### IncrementHit
- **Endpoint / Signature:** `void IncrementHit ( string actingUserName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### Relist
- **Endpoint / Signature:** `bool Relist ( string actingUserName , int listingId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingId | `System Int32` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

#### RelistNoGet
- **Endpoint / Signature:** `bool RelistNoGet ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

#### RemoveListingRegion
- **Endpoint / Signature:** `void RemoveListingRegion ( string actingUserName , int listingId , int regionId )`
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

#### RollbackListingActionsByDTTM
- **Endpoint / Signature:** `void RollbackListingActionsByDTTM ( string actingUserName , int listingID , DateTime rollbackDTTM )`
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

#### RollbackListingActionsByID
- **Endpoint / Signature:** `void RollbackListingActionsByID ( string actingUserName , int listingID , int listingActionID )`
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

#### SearchListings
- **Endpoint / Signature:** `Page < Listing > SearchListings ( string actingUserName , ListingPageQuery query , int pageIndex , int pageSize , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
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

#### SearchListingsByConsignor
- **Endpoint / Signature:** `Page < Listing > SearchListingsByConsignor ( string actingUserName , string consignorUserName , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### SearchListingsWithAdditionalParameters
- **Endpoint / Signature:** `Page < Listing > SearchListingsWithAdditionalParameters ( string actingUserName , ListingPageQuery query , List < KeyValuePair < string , string >> additionalParameters , int pageIndex , int pageSize , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
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

#### SearchListingsWithAdditionalParametersAndFillLevel
- **Endpoint / Signature:** `Page < Listing > SearchListingsWithAdditionalParametersAndFillLevel ( string actingUserName , ListingPageQuery query , List < KeyValuePair < string , string >> additionalParameters , int pageIndex , int pageSize , string fillLevel , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
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

#### SearchListingsWithAdditionalParametersAndFillLevelAndContext
- **Endpoint / Signature:** `Page < Listing > SearchListingsWithAdditionalParametersAndFillLevelAndContext ( string actingUserName , ListingPageQuery query , List < KeyValuePair < string , string >> additionalParameters , int pageIndex , int pageSize , string fillLevel , string contextUserName , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
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

#### SearchListingsWithFillLevel
- **Endpoint / Signature:** `Page < Listing > SearchListingsWithFillLevel ( string actingUserName , ListingPageQuery query , int pageIndex , int pageSize , string fillLevel , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
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

#### SearchListingsWithFillLevelAndContext
- **Endpoint / Signature:** `Page < Listing > SearchListingsWithFillLevelAndContext ( string actingUserName , ListingPageQuery query , int pageIndex , int pageSize , string fillLevel , string contextUserName , bool retrieveCatCounts , out Dictionary < int , int > categoryCounts )`
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

#### SearchOffersByUser
- **Endpoint / Signature:** `Page < Offer > SearchOffersByUser ( string actingUserName , string userName , string offerDirection , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### SearchOffersByUserWithListingFillLevel
- **Endpoint / Signature:** `Page < Offer > SearchOffersByUserWithListingFillLevel ( string actingUserName , string userName , string offerDirection , string viewFilter , string searchTerm , string searchType , int pageIndex , int pageSize , string sortColumn , bool descending , string fillLevel )`
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

#### SendCounterOffer
- **Endpoint / Signature:** `void SendCounterOffer ( UserInput userInput , out Offer newOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | newOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SendOffer
- **Endpoint / Signature:** `void SendOffer ( UserInput userInput , out Offer newOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | newOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetAllListingRegions
- **Endpoint / Signature:** `void SetAllListingRegions ( string actingUserName , int listingId , IEnumerable < int > allRegionIds )`
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

#### SetListingStatus
- **Endpoint / Signature:** `void SetListingStatus ( string actingUserName , int listingId , string listingStatus )`
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

#### StartListingNow
- **Endpoint / Signature:** `void StartListingNow ( string actingUserName , int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SubmitListingAction
- **Endpoint / Signature:** `bool SubmitListingAction ( string actingUserName , UserInput userInput , out bool accepted , out ReasonCode reasonCode , out LineItem newPurchaseLineitem , Listing listing )`
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

#### ToggleListingType
- **Endpoint / Signature:** `void ToggleListingType ( string actingUserName , int listingTypeID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listingTypeID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UnassignListingTypeToCategory
- **Endpoint / Signature:** `void UnassignListingTypeToCategory ( string actingUserName , int categoryID , int listingTypeID )`
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

#### UndoListingAction
- **Endpoint / Signature:** `void UndoListingAction ( string actingUserName , int listingID , int listingActionID )`
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

#### UpdateIncrements
- **Endpoint / Signature:** `void UpdateIncrements ( string actingUserName , List < Increment > increments )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | increments | `System.Collections.Generic List Increment` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateListing
- **Endpoint / Signature:** `void UpdateListing ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateListingBasic
- **Endpoint / Signature:** `void UpdateListingBasic ( string actingUserName , Listing listing )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | listing | `vendor.framework.DTO Listing` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateListingTypeProperties
- **Endpoint / Signature:** `void UpdateListingTypeProperties ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateListingWithUserInput
- **Endpoint / Signature:** `bool UpdateListingWithUserInput ( string actingUserName , Listing listing , UserInput userInput )`
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

#### ValidateCounterOffer
- **Endpoint / Signature:** `void ValidateCounterOffer ( UserInput userInput , out Offer newOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | newOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### ValidateListingActionInput
- **Endpoint / Signature:** `bool ValidateListingActionInput ( string actingUserName , UserInput userInput , int listingId )`
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

#### ValidateOffer
- **Endpoint / Signature:** `void ValidateOffer ( UserInput userInput , out Offer newOffer )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | newOffer | `vendor.framework.DTO Offer` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## NotifierService

**Namespace:** `vendor.framework.BLL.ServiceImplementations`

#### Overview
Initializes a new instance of the NotifierService class

#### Methods

#### CreateEmailTemplateContent
- **Endpoint / Signature:** `public void CreateEmailTemplateContent ( string actingUserName , string culture , string sourceCulture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
  | sourceCulture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteEmailTemplateContent
- **Endpoint / Signature:** `public void DeleteEmailTemplateContent ( string actingUserName , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GenerateNotificationPreview
- **Endpoint / Signature:** `public void GenerateNotificationPreview ( string actingUserName , string template , string culture , string proposedSubject , string proposedBody , out string resultSubject , out string resultBody )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | template | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
  | proposedSubject | `System String` | (Not documented in source) |
  | proposedBody | `System String` | (Not documented in source) |
  | resultSubject | `System String` | (Not documented in source) |
  | resultBody | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetAllEmailTemplates
- **Endpoint / Signature:** `public List < EmailTemplate > GetAllEmailTemplates ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetDefaultContent
- **Endpoint / Signature:** `public void GetDefaultContent ( string actingUserName , string template , out string emailSubject , out string emailBody )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | template | `System String` | (Not documented in source) |
  | emailSubject | `System String` | (Not documented in source) |
  | emailBody | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetEmailTemplateContent
- **Endpoint / Signature:** `public EmailTemplateContent GetEmailTemplateContent ( string actingUserName , string name , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | name | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** EmailTemplateContent
- **Exceptions / Errors:**
  None documented

#### GetEmailTemplateCultures
- **Endpoint / Signature:** `public List < string > GetEmailTemplateCultures ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### NotifierService
- **Endpoint / Signature:** `public NotifierService ()`
- **Description:** Initializes a new instance of the NotifierService class
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### NotifierService
- **Endpoint / Signature:** `public NotifierService ( IDataContext data , ICommonService common )`
- **Description:** Initializes a new instance of the NotifierService class
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | data | `vendor.framework.DAL IDataContext` | (Not documented in source) |
  | common | `vendor.framework.Services ICommonService` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### QueueNotification
- **Endpoint / Signature:** `public void QueueNotification ( string actingUserName , string senderUserName , string recipientUserName , string template , string detailType , int detailId , string message , string replyToEmail , string recipientEmail , string ccEmail , string bccEmail )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | senderUserName | `System String` | (Not documented in source) |
  | recipientUserName | `System String` | (Not documented in source) |
  | template | `System String` | (Not documented in source) |
  | detailType | `System String` | (Not documented in source) |
  | detailId | `System Int32` | (Not documented in source) |
  | message | `System String` | (Not documented in source) |
  | replyToEmail | `System String` | (Not documented in source) |
  | recipientEmail | `System String` | (Not documented in source) |
  | ccEmail | `System String` | (Not documented in source) |
  | bccEmail | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### QueueSystemNotification
- **Endpoint / Signature:** `public void QueueSystemNotification ( string actingUserName , string recipientUserName , string template , string detailType , int detailId , string message , string replyToEmail , string recipientEmail , string ccEmail , string bccEmail )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | recipientUserName | `System String` | (Not documented in source) |
  | template | `System String` | (Not documented in source) |
  | detailType | `System String` | (Not documented in source) |
  | detailId | `System Int32` | (Not documented in source) |
  | message | `System String` | (Not documented in source) |
  | replyToEmail | `System String` | (Not documented in source) |
  | recipientEmail | `System String` | (Not documented in source) |
  | ccEmail | `System String` | (Not documented in source) |
  | bccEmail | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetEmailTemplateContent
- **Endpoint / Signature:** `public void SetEmailTemplateContent ( string actingUserName , string name , string culture , string subject , string body )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | name | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
  | subject | `System String` | (Not documented in source) |
  | body | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetEmailTemplateEnabled
- **Endpoint / Signature:** `public void SetEmailTemplateEnabled ( string actingUserName , int id , bool enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### StartThreads
- **Endpoint / Signature:** `public void StartThreads ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### StopThreads
- **Endpoint / Signature:** `public void StopThreads ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## ICommonService

**Namespace:** `vendor.framework.Services`

#### Overview
(Not documented in source)

#### Methods

#### AddChildCategory
- **Endpoint / Signature:** `void AddChildCategory ( string actingUserName , Category newCategory )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | newCategory | `vendor.framework.DTO Category` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddCustomField
- **Endpoint / Signature:** `int AddCustomField ( string actingUserName , CustomField customField )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customField | `vendor.framework.DTO CustomField` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### AddEnumeration
- **Endpoint / Signature:** `void AddEnumeration ( string actingUserName , int customFieldID , string Name , string Title , string Value , bool Enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
  | Title | `System String` | (Not documented in source) |
  | Value | `System String` | (Not documented in source) |
  | Enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddMedia
- **Endpoint / Signature:** `void AddMedia ( string actingUserName , Media media )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | media | `vendor.framework.DTO.Media Media` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AlphaSortCategories
- **Endpoint / Signature:** `void AlphaSortCategories ( string actingUserName , int parentCategoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | parentCategoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AssignFieldToCategories
- **Endpoint / Signature:** `void AssignFieldToCategories ( string actingUserName , int customFieldID , int [] categoryIds )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | categoryIds | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AssignFieldToCategoryAndDescendants
- **Endpoint / Signature:** `void AssignFieldToCategoryAndDescendants ( string actingUserName , int customFieldID , int categoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CleanupSignalRConversations
- **Endpoint / Signature:** `void CleanupSignalRConversations ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### ClearCache
- **Endpoint / Signature:** `void ClearCache ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CreatePropertyBag
- **Endpoint / Signature:** `PropertyBag CreatePropertyBag ( Dictionary < string , string > properties )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | properties | `System.Collections.Generic Dictionary String , String` | (Not documented in source) |
- **Returns:** PropertyBag
- **Exceptions / Errors:**
  None documented

#### DeleteCategory
- **Endpoint / Signature:** `void DeleteCategory ( string actingUserName , int categoryID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteEnum
- **Endpoint / Signature:** `void DeleteEnum ( string actingUserName , int enumID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | enumID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteExpiredOriginalMediasNow
- **Endpoint / Signature:** `void DeleteExpiredOriginalMediasNow ( string actingUserName , string appRootPath )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | appRootPath | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteField
- **Endpoint / Signature:** `void DeleteField ( string actingUserName , int fieldID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | fieldID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteMedia
- **Endpoint / Signature:** `void DeleteMedia ( string actingUserName , Guid guid )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | guid | `System Guid` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteMediaVariation
- **Endpoint / Signature:** `void DeleteMediaVariation ( string actingUserName , Guid guid , string variationName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | guid | `System Guid` | (Not documented in source) |
  | variationName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeletePropertyBag
- **Endpoint / Signature:** `void DeletePropertyBag ( int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteRegion
- **Endpoint / Signature:** `void DeleteRegion ( string actingUserName , int regionID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | regionID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetAllFields
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAttributeData
- **Endpoint / Signature:** `Dictionary < string , string > GetAttributeData ( string type , string context )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | type | `System String` | (Not documented in source) |
  | context | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetAttributes
- **Endpoint / Signature:** `Page < Attribute > GetAttributes ( string type , string context , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | type | `System String` | (Not documented in source) |
  | context | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetCategoriesByCustomFieldID
- **Endpoint / Signature:** `List < Category > GetCategoriesByCustomFieldID ( int customFieldID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | customFieldID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCategoryByID
- **Endpoint / Signature:** `Category GetCategoryByID ( int categoryID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | categoryID | `System Int32` | (Not documented in source) |
- **Returns:** Category
- **Exceptions / Errors:**
  None documented

#### GetCategoryByName
- **Endpoint / Signature:** `Category GetCategoryByName ( string name , string type = null )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | name | `System String` | (Not documented in source) |
  | type | `System String` | (Not documented in source) |
- **Returns:** Category
- **Exceptions / Errors:**
  None documented

#### GetCategoryCounts
- **Endpoint / Signature:** `Dictionary < int , int > GetCategoryCounts ( List < string > categoryIDs , string statuses , string seller )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | categoryIDs | `System.Collections.Generic List String` | (Not documented in source) |
  | statuses | `System String` | (Not documented in source) |
  | seller | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetCategoryHierarchy
- **Endpoint / Signature:** `List < Category > GetCategoryHierarchy ( int rootID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | rootID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCategoryPath
- **Endpoint / Signature:** `List < Category > GetCategoryPath ( int leafID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | leafID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCategoryUsages
- **Endpoint / Signature:** `int [] GetCategoryUsages ( string actingUserName , int categoryID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryID | `System Int32` | (Not documented in source) |
- **Returns:**
- **Exceptions / Errors:**
  None documented

#### GetChildCategories
- **Endpoint / Signature:** `List < Category > GetChildCategories ( int parentCategoryID , bool includeRelatedCustomFields )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | parentCategoryID | `System Int32` | (Not documented in source) |
  | includeRelatedCustomFields | `System Boolean` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCustomFieldByID
- **Endpoint / Signature:** `CustomField GetCustomFieldByID ( int customFieldID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | customFieldID | `System Int32` | (Not documented in source) |
- **Returns:** CustomField
- **Exceptions / Errors:**
  None documented

#### GetCustomFields
- **Endpoint / Signature:** `Page < CustomField > GetCustomFields ( string groupName , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | groupName | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetDalDttm
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** DateTime
- **Exceptions / Errors:**
  None documented

#### GetEditableAttributes
- **Endpoint / Signature:** `Page < Attribute > GetEditableAttributes ( string actingUserName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetFieldsByCategoryID
- **Endpoint / Signature:** `List < CustomField > GetFieldsByCategoryID ( int categoryID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | categoryID | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetGenericReportResults
- **Endpoint / Signature:** `Page < ReportRow > GetGenericReportResults ( string actingUserName , string procName , Dictionary < string , string > argList , UserInput input , int pageIndex , int pageSize , string sortColumn , bool sortDescending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | procName | `System String` | (Not documented in source) |
  | argList | `System.Collections.Generic Dictionary String , String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | sortDescending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetLimitedCategoryHierarchy
- **Endpoint / Signature:** `List < Category > GetLimitedCategoryHierarchy ( int rootID , int depth )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | rootID | `System Int32` | (Not documented in source) |
  | depth | `System Int32` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetLogEntries
- **Endpoint / Signature:** `Page < LogEntry > GetLogEntries ( string actingUserName , string functionalArea , string severity , DateTime ? utcFromDate , DateTime ? utcToDate , string searchTerm , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | functionalArea | `System String` | (Not documented in source) |
  | severity | `System String` | (Not documented in source) |
  | utcFromDate | `System Nullable DateTime` | (Not documented in source) |
  | utcToDate | `System Nullable DateTime` | (Not documented in source) |
  | searchTerm | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetLogEntryOptions
- **Endpoint / Signature:** `void GetLogEntryOptions ( out Dictionary < string , int > severityOptions , out Dictionary < string , int > areaOptions )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | severityOptions | `System.Collections.Generic Dictionary String , Int32` | (Not documented in source) |
  | areaOptions | `System.Collections.Generic Dictionary String , Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetMediaByGUID
- **Endpoint / Signature:** `Media GetMediaByGUID ( string actingUserName , Guid mediaGuid )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | mediaGuid | `System Guid` | (Not documented in source) |
- **Returns:** Media
- **Exceptions / Errors:**
  None documented

#### GetMediaByID
- **Endpoint / Signature:** `Media GetMediaByID ( string actingUserName , int mediaID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | mediaID | `System Int32` | (Not documented in source) |
- **Returns:** Media
- **Exceptions / Errors:**
  None documented

#### GetPropertyBag
- **Endpoint / Signature:** `PropertyBag GetPropertyBag ( int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | id | `System Int32` | (Not documented in source) |
- **Returns:** PropertyBag
- **Exceptions / Errors:**
  None documented

#### GetReportByID
- **Endpoint / Signature:** `Report GetReportByID ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** Report
- **Exceptions / Errors:**
  None documented

#### GetSystemInfo
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** SystemInfo
- **Exceptions / Errors:**
  None documented

#### GetVersionInfo
- **Endpoint / Signature:** `Dictionary < string , string > GetVersionInfo ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### Initialize
- **Endpoint / Signature:** `bool Initialize ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

#### MoveCategoryDown
- **Endpoint / Signature:** `void MoveCategoryDown ( string actingUserName , int categoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### MoveCategoryUp
- **Endpoint / Signature:** `void MoveCategoryUp ( string actingUserName , int categoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetAttributeData
- **Endpoint / Signature:** `void SetAttributeData ( string actingUserName , string editMode , string type , string context , Dictionary < string , string > data )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | editMode | `System String` | (Not documented in source) |
  | type | `System String` | (Not documented in source) |
  | context | `System String` | (Not documented in source) |
  | data | `System.Collections.Generic Dictionary String , String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetAttributes
- **Endpoint / Signature:** `void SetAttributes ( string actingUserName , List < Attribute > attributes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | attributes | `System.Collections.Generic List Attribute` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCategoryMetaData
- **Endpoint / Signature:** `void SetCategoryMetaData ( string actingUserName , int categoryID , string metaKeywords , string metaDescription , string pageTitle , string pageContent )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryID | `System Int32` | (Not documented in source) |
  | metaKeywords | `System String` | (Not documented in source) |
  | metaDescription | `System String` | (Not documented in source) |
  | pageTitle | `System String` | (Not documented in source) |
  | pageContent | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCategoryName
- **Endpoint / Signature:** `void SetCategoryName ( string actingUserName , int categoryId , string categoryName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
  | categoryName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetMediaStatus
- **Endpoint / Signature:** `void SetMediaStatus ( string actingUserName , Guid guid , string status )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | guid | `System Guid` | (Not documented in source) |
  | status | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### TruncateLogEntries
- **Endpoint / Signature:** `void TruncateLogEntries ( string actingUserName , int days )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | days | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UnassignFieldFromCategories
- **Endpoint / Signature:** `void UnassignFieldFromCategories ( string actingUserName , int customFieldID , int [] categoryIds )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | categoryIds | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UnassignFieldFromCategoryAndDescendants
- **Endpoint / Signature:** `void UnassignFieldFromCategoryAndDescendants ( string actingUserName , int customFieldID , int categoryId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customFieldID | `System Int32` | (Not documented in source) |
  | categoryId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateCategory
- **Endpoint / Signature:** `void UpdateCategory ( string actingUserName , Category category )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | category | `vendor.framework.DTO Category` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateCustomField
- **Endpoint / Signature:** `void UpdateCustomField ( string actingUserName , CustomField customField )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customField | `vendor.framework.DTO CustomField` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateCustomFieldDisplayOrder
- **Endpoint / Signature:** `void UpdateCustomFieldDisplayOrder ( string actingUserName , CustomField customField )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customField | `vendor.framework.DTO CustomField` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdatePropertyBag
- **Endpoint / Signature:** `void UpdatePropertyBag ( PropertyBag propertyBag )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | propertyBag | `vendor.framework.DTO PropertyBag` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## INotifierService

**Namespace:** `vendor.framework.Services`

#### Overview
(Not documented in source)

#### Methods

#### CreateEmailTemplateContent
- **Endpoint / Signature:** `void CreateEmailTemplateContent ( string actingUserName , string culture , string sourceCulture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
  | sourceCulture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteEmailTemplateContent
- **Endpoint / Signature:** `void DeleteEmailTemplateContent ( string actingUserName , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GenerateNotificationPreview
- **Endpoint / Signature:** `void GenerateNotificationPreview ( string actingUserName , string template , string culture , string proposedSubject , string proposedBody , out string resultSubject , out string resultBody )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | template | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
  | proposedSubject | `System String` | (Not documented in source) |
  | proposedBody | `System String` | (Not documented in source) |
  | resultSubject | `System String` | (Not documented in source) |
  | resultBody | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetAllEmailTemplates
- **Endpoint / Signature:** `List < EmailTemplate > GetAllEmailTemplates ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetDefaultContent
- **Endpoint / Signature:** `void GetDefaultContent ( string actingUserName , string template , out string emailSubject , out string emailBody )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | template | `System String` | (Not documented in source) |
  | emailSubject | `System String` | (Not documented in source) |
  | emailBody | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetEmailTemplateContent
- **Endpoint / Signature:** `EmailTemplateContent GetEmailTemplateContent ( string actingUserName , string name , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | name | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** EmailTemplateContent
- **Exceptions / Errors:**
  None documented

#### GetEmailTemplateCultures
- **Endpoint / Signature:** `List < string > GetEmailTemplateCultures ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### QueueNotification
- **Endpoint / Signature:** `void QueueNotification ( string actingUserName , string senderUserName , string recipientUserName , string template , string detailType , int detailId , string message , string replyToEmail , string recipientEmail , string ccEmail , string bccEmail )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | senderUserName | `System String` | (Not documented in source) |
  | recipientUserName | `System String` | (Not documented in source) |
  | template | `System String` | (Not documented in source) |
  | detailType | `System String` | (Not documented in source) |
  | detailId | `System Int32` | (Not documented in source) |
  | message | `System String` | (Not documented in source) |
  | replyToEmail | `System String` | (Not documented in source) |
  | recipientEmail | `System String` | (Not documented in source) |
  | ccEmail | `System String` | (Not documented in source) |
  | bccEmail | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### QueueSystemNotification
- **Endpoint / Signature:** `void QueueSystemNotification ( string actingUserName , string recipientUserName , string template , string detailType , int detailId , string message , string replyToEmail , string recipientEmail , string ccEmail , string bccEmail )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | recipientUserName | `System String` | (Not documented in source) |
  | template | `System String` | (Not documented in source) |
  | detailType | `System String` | (Not documented in source) |
  | detailId | `System Int32` | (Not documented in source) |
  | message | `System String` | (Not documented in source) |
  | replyToEmail | `System String` | (Not documented in source) |
  | recipientEmail | `System String` | (Not documented in source) |
  | ccEmail | `System String` | (Not documented in source) |
  | bccEmail | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetEmailTemplateContent
- **Endpoint / Signature:** `void SetEmailTemplateContent ( string actingUserName , string name , string culture , string subject , string body )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | name | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
  | subject | `System String` | (Not documented in source) |
  | body | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetEmailTemplateEnabled
- **Endpoint / Signature:** `void SetEmailTemplateEnabled ( string actingUserName , int id , bool enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---

## IUserService

**Namespace:** `vendor.framework.Services`

#### Overview
(Not documented in source)

#### Methods

#### AddAddressToUser
- **Endpoint / Signature:** `void AddAddressToUser ( string actingUserName , int userID , Address address )`
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

#### AddCreditCardToUser
- **Endpoint / Signature:** `void AddCreditCardToUser ( string actingUserName , string userName , UserInput input )`
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

#### AddFeedback
- **Endpoint / Signature:** `void AddFeedback ( string actingUserName , string userName , UserInput input )`
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

#### AddSalesTaxRate
- **Endpoint / Signature:** `void AddSalesTaxRate ( string actingUserName , string userName , int stateID , decimal taxRate , string shipping )`
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

#### AddUserToRole
- **Endpoint / Signature:** `void AddUserToRole ( string actingUserName , string userName , string roleName )`
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

#### AddWatch
- **Endpoint / Signature:** `void AddWatch ( string actingUserName , string userName , int listingID )`
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

#### ChangeMessageReadState
- **Endpoint / Signature:** `void ChangeMessageReadState ( string actingUserName , int messageId , string ownerUsername , bool read )`
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

#### CountOfUsersOnline
- **Endpoint / Signature:** `int CountOfUsersOnline ( string actingUserName , int onlineTimeMinutes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | onlineTimeMinutes | `System Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### CreateConsignor
- **Endpoint / Signature:** `void CreateConsignor ( string actingUserName , Consignor consignor )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignor | `vendor.framework.DTO Consignor` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CreateConsignorFromUserInput
- **Endpoint / Signature:** `Consignor CreateConsignorFromUserInput ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Consignor
- **Exceptions / Errors:**
  None documented

#### DeleteAddress
- **Endpoint / Signature:** `void DeleteAddress ( string actingUserName , int addressID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | addressID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteCreditCard
- **Endpoint / Signature:** `void DeleteCreditCard ( string actingUserName , string userName , int creditCardID )`
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

#### DeleteFeedback
- **Endpoint / Signature:** `void DeleteFeedback ( string actingUserName , int feedbackID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | feedbackID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteMessage
- **Endpoint / Signature:** `void DeleteMessage ( string actingUserName , int messageId , string ownerUsername )`
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

#### DeleteSalesTaxRates
- **Endpoint / Signature:** `void DeleteSalesTaxRates ( string actingUserName , string salesTaxRateIDs )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | salesTaxRateIDs | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteUser
- **Endpoint / Signature:** `void DeleteUser ( string actingUserName , int userID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userID | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### FindUsersByCustomProperty
- **Endpoint / Signature:** `List < User > FindUsersByCustomProperty ( string actingUserName , string customFieldName , string propertyValue )`
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

#### GenerateUserListCSV
- **Endpoint / Signature:** `void GenerateUserListCSV ( string actingUserName , int Id , string searchUserName , string searchFirstName , string searchLastName , string searchEmail , string searchStatus , string searchRole , string sortColumn , bool sortDescending , bool includeHeaders , string columnSpecification )`
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

#### GenerateUserListCSVSync
- **Endpoint / Signature:** `string GenerateUserListCSVSync ( string actingUserName , int Id , string searchUserName , string searchFirstName , string searchLastName , string searchEmail , string searchStatus , string searchRole , string sortColumn , bool sortDescending , bool includeHeaders , string columnSpecification )`
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

#### GetAddresses
- **Endpoint / Signature:** `List < Address > GetAddresses ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAllFeedbackFromUser
- **Endpoint / Signature:** `Page < Feedback > GetAllFeedbackFromUser ( string actingUserName , string fromUserName , int ? monthsOld , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetAllFeedbackToUser
- **Endpoint / Signature:** `Page < Feedback > GetAllFeedbackToUser ( string actingUserName , string toUserName , int ? monthsOld , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetAllRoles
- **Endpoint / Signature:** `List < Role > GetAllRoles ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAllUsers
- **Endpoint / Signature:** `Page < User > GetAllUsers ( string actingUserName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetBuyerFeedback
- **Endpoint / Signature:** `Page < Feedback > GetBuyerFeedback ( string actingUserName , string buyer , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetBuyerFeedbackToUser
- **Endpoint / Signature:** `Page < Feedback > GetBuyerFeedbackToUser ( string actingUserName , string toUserName , int ? monthsOld , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetConsignorById
- **Endpoint / Signature:** `Consignor GetConsignorById ( string actingUserName , int consignorId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignorId | `System Int32` | (Not documented in source) |
- **Returns:** Consignor
- **Exceptions / Errors:**
  None documented

#### GetConsignorBySeller
- **Endpoint / Signature:** `Consignor GetConsignorBySeller ( string actingUserName , int sellerId , string consignorNumber )`
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

#### GetCreditCardsForUser
- **Endpoint / Signature:** `List < CreditCard > GetCreditCardsForUser ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetFeedbackRating
- **Endpoint / Signature:** `FeedbackRating GetFeedbackRating ( string actingUserName , string userName , bool basicOnly )`
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

#### GetMessagesForReceiver
- **Endpoint / Signature:** `Page < UserMessage > GetMessagesForReceiver ( string actingUserName , string receivingUser , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetMessagesForSender
- **Endpoint / Signature:** `Page < UserMessage > GetMessagesForSender ( string actingUserName , string sendingUser , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetRoleByName
- **Endpoint / Signature:** `Role GetRoleByName ( string actingUserName , string roleName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | roleName | `System String` | (Not documented in source) |
- **Returns:** Role
- **Exceptions / Errors:**
  None documented

#### GetRolesForUser
- **Endpoint / Signature:** `List < Role > GetRolesForUser ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetSalesTaxRatesByUser
- **Endpoint / Signature:** `List < SalesTaxRate > GetSalesTaxRatesByUser ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetSellerFeedback
- **Endpoint / Signature:** `Page < Feedback > GetSellerFeedback ( string actingUserName , string seller , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetSellerFeedbackToUser
- **Endpoint / Signature:** `Page < Feedback > GetSellerFeedbackToUser ( string actingUserName , string toUserName , int ? monthsOld , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetUnHashedPasswords
- **Endpoint / Signature:** `Dictionary < int , string > GetUnHashedPasswords ()`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetUnreadMessageCount
- **Endpoint / Signature:** `int GetUnreadMessageCount ( string actingUserName , string recipientUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | recipientUserName | `System String` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### GetUserByEmail
- **Endpoint / Signature:** `User GetUserByEmail ( string actingUserName , string email )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | email | `System String` | (Not documented in source) |
- **Returns:** User
- **Exceptions / Errors:**
  None documented

#### GetUserByID
- **Endpoint / Signature:** `User GetUserByID ( string actingUserName , int userID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userID | `System Int32` | (Not documented in source) |
- **Returns:** User
- **Exceptions / Errors:**
  None documented

#### GetUserByUserName
- **Endpoint / Signature:** `User GetUserByUserName ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** User
- **Exceptions / Errors:**
  None documented

#### GetUserByUserNameOrEmail
- **Endpoint / Signature:** `User GetUserByUserNameOrEmail ( string actingUserName , string userNameOrEmailAddress )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userNameOrEmailAddress | `System String` | (Not documented in source) |
- **Returns:** User
- **Exceptions / Errors:**
  None documented

#### GetUserMessage
- **Endpoint / Signature:** `UserMessage GetUserMessage ( string actingUserName , int messageId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | messageId | `System Int32` | (Not documented in source) |
- **Returns:** UserMessage
- **Exceptions / Errors:**
  None documented

#### GetUserMessages
- **Endpoint / Signature:** `Page < UserMessage > GetUserMessages ( string actingUserName , string username , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetUserProperties
- **Endpoint / Signature:** `Page < CustomProperty > GetUserProperties ( string actingUserName , string userName , int pageIndex , int pageSize , string sortColumn , bool descending )`
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

#### GetUsersInRole
- **Endpoint / Signature:** `List < User > GetUsersInRole ( string actingUserName , string roleName , int pageIndex , int pageSize )`
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

#### GetWatchCount
- **Endpoint / Signature:** `int GetWatchCount ( int listingID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | listingID | `System Int32` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### IsActiveUser
- **Endpoint / Signature:** `bool IsActiveUser ( string username )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | username | `System String` | (Not documented in source) |
- **Returns:** Boolean
- **Exceptions / Errors:**
  None documented

#### RegisterUser
- **Endpoint / Signature:** `void RegisterUser ( string actingUserName , UserInput input , bool validateOnly , Dictionary < string , Object > options )`
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

#### RemoveUserFromRole
- **Endpoint / Signature:** `void RemoveUserFromRole ( string actingUserName , string userName , string roleName )`
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

#### RemoveWatch
- **Endpoint / Signature:** `void RemoveWatch ( string actingUserName , string userName , int listingID )`
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

#### SearchConsignors
- **Endpoint / Signature:** `Page < Consignor > SearchConsignors ( string actingUserName , string sellerUserName , string searchType , string searchTerm , string status , string sortColumn , bool sortDescending , int pageIndex , int pageSize )`
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

#### SearchUsers
- **Endpoint / Signature:** `Page < User > SearchUsers ( string actingUserName , int Id , string searchUserName , string searchFirstName , string searchLastName , string searchEmail , string searchStatus , string searchRole , string sortColumn , bool sortDescending , int pageIndex , int pageSize )`
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

#### SendNeedsAdminApprovalEmail
- **Endpoint / Signature:** `void SendNeedsAdminApprovalEmail ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SendPasswordResetEmail
- **Endpoint / Signature:** `void SendPasswordResetEmail ( string actingUserName , string email )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | email | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SendUserMessage
- **Endpoint / Signature:** `int SendUserMessage ( string actingUserName , string sendingUser , string receivingUser , string subject , string body , int ? listingId , int ? masterMessageID = null )`
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

#### SendUserVerificationEmail
- **Endpoint / Signature:** `void SendUserVerificationEmail ( string actingUserName , string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetBillingCreditCardForUser
- **Endpoint / Signature:** `void SetBillingCreditCardForUser ( string actingUserName , string userName , int creditCardID )`
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

#### SetLastActivityDate
- **Endpoint / Signature:** `void SetLastActivityDate ( string userName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | userName | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetPrimaryAddressForUser
- **Endpoint / Signature:** `void SetPrimaryAddressForUser ( string actingUserName , string userName , int addressID )`
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

#### SetUserActive
- **Endpoint / Signature:** `void SetUserActive ( string actingUserName , string userName , bool active )`
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

#### SetUsersIPAddress
- **Endpoint / Signature:** `void SetUsersIPAddress ( string actingUserName , string userName , string ipAddress )`
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

#### UpdateAddress
- **Endpoint / Signature:** `int UpdateAddress ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### UpdateAllUserDetails
- **Endpoint / Signature:** `void UpdateAllUserDetails ( string actingUserName , UserInput input , bool validateOnly )`
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

#### UpdateConsignor
- **Endpoint / Signature:** `void UpdateConsignor ( string actingUserName , Consignor consignor )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | consignor | `vendor.framework.DTO Consignor` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateConsignorFromUserInput
- **Endpoint / Signature:** `void UpdateConsignorFromUserInput ( string actingUserName , int consignorId , UserInput input )`
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

#### UpdateProperties
- **Endpoint / Signature:** `void UpdateProperties ( string actingUserName , string userName , List < CustomProperty > properties , UserInput userInput )`
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

#### UpdateSalesTaxRates
- **Endpoint / Signature:** `void UpdateSalesTaxRates ( string actingUserName , List < SalesTaxRate > rates )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | rates | `System.Collections.Generic List SalesTaxRate` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateUser
- **Endpoint / Signature:** `void UpdateUser ( string actingUserName , User user )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | user | `vendor.framework.DTO User` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateUserCulture
- **Endpoint / Signature:** `void UpdateUserCulture ( string actingUserName , string userName , string culture )`
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

#### VerifyUser
- **Endpoint / Signature:** `bool VerifyUser ( string username , string verificationCode , out ReasonCode reasonCode )`
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



---

## ISiteService

**Namespace:** `vendor.framework.Services`

#### Overview
(Not documented in source)

#### Methods

#### AddBanner
- **Endpoint / Signature:** `Banner AddBanner ( string actingUserName , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Banner
- **Exceptions / Errors:**
  None documented

#### AddContentForCulture
- **Endpoint / Signature:** `void AddContentForCulture ( string actingUserName , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddCustomCurrency
- **Endpoint / Signature:** `void AddCustomCurrency ( string actingUserName , CustomCurrency customCurrency )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | customCurrency | `vendor.framework.DTO CustomCurrency` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddDecoration
- **Endpoint / Signature:** `void AddDecoration ( string actingUserName , string Name , string Description , decimal Amount , string FormatString , string ValidFields , bool PayToProceed )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Amount | `System Decimal` | (Not documented in source) |
  | FormatString | `System String` | (Not documented in source) |
  | ValidFields | `System String` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddEventFee
- **Endpoint / Signature:** `void AddEventFee ( string actingUserName , int ListingType , int Event , bool PayToProceed , string Description , string Name )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | ListingType | `System Int32` | (Not documented in source) |
  | Event | `System Int32` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddFeeTier
- **Endpoint / Signature:** `void AddFeeTier ( string actingUserName , int feeScheduleID , decimal LowerBoundInclusive , decimal UpperBoundExclusive , decimal Value , string ValueType )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | feeScheduleID | `System Int32` | (Not documented in source) |
  | LowerBoundInclusive | `System Decimal` | (Not documented in source) |
  | UpperBoundExclusive | `System Decimal` | (Not documented in source) |
  | Value | `System Decimal` | (Not documented in source) |
  | ValueType | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddShippingMethods
- **Endpoint / Signature:** `void AddShippingMethods ( string actingUserName , List < string > newShippingMethodNames )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | newShippingMethodNames | `System.Collections.Generic List String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### AddSiteProperty
- **Endpoint / Signature:** `int AddSiteProperty ( string actingUserName , CustomProperty siteProperty )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | siteProperty | `vendor.framework.DTO CustomProperty` | (Not documented in source) |
- **Returns:** Int32
- **Exceptions / Errors:**
  None documented

#### AddState
- **Endpoint / Signature:** `void AddState ( string actingUserName , State newState )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | newState | `vendor.framework.DTO State` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### CreateUserContent
- **Endpoint / Signature:** `void CreateUserContent ( string actingUserName , string name , bool useHTMLEditor )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | name | `System String` | (Not documented in source) |
  | useHTMLEditor | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteBanner
- **Endpoint / Signature:** `void DeleteBanner ( string actingUserName , int bannerId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | bannerId | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteContentForCulture
- **Endpoint / Signature:** `void DeleteContentForCulture ( string actingUserName , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteCustomCurrency
- **Endpoint / Signature:** `void DeleteCustomCurrency ( string actingUserName , string currencyCode )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | currencyCode | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteDecoration
- **Endpoint / Signature:** `void DeleteDecoration ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteEventFee
- **Endpoint / Signature:** `void DeleteEventFee ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteFeeTier
- **Endpoint / Signature:** `void DeleteFeeTier ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteState
- **Endpoint / Signature:** `void DeleteState ( string actingUserName , int id )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### DeleteUserContent
- **Endpoint / Signature:** `void DeleteUserContent ( string actingUserName , string name )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | name | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### GetAdminSummaryCounts
- **Endpoint / Signature:** `Dictionary < string , int > GetAdminSummaryCounts ( string actingUserName )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
- **Returns:** Dictionary
- **Exceptions / Errors:**
  None documented

#### GetAllBanners
- **Endpoint / Signature:** `Page < Banner > GetAllBanners ( string bannerLocation , int pageIndex , int pageSize , string sortColumn , bool descending )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | bannerLocation | `System String` | (Not documented in source) |
  | pageIndex | `System Int32` | (Not documented in source) |
  | pageSize | `System Int32` | (Not documented in source) |
  | sortColumn | `System String` | (Not documented in source) |
  | descending | `System Boolean` | (Not documented in source) |
- **Returns:** Page
- **Exceptions / Errors:**
  None documented

#### GetAllContent
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAllCountries
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetAllStates
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetBannerById
- **Endpoint / Signature:** `Banner GetBannerById ( int bannerId )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | bannerId | `System Int32` | (Not documented in source) |
- **Returns:** Banner
- **Exceptions / Errors:**
  None documented

#### GetContentByID
- **Endpoint / Signature:** `Content GetContentByID ( int contentID )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | contentID | `System Int32` | (Not documented in source) |
- **Returns:** Content
- **Exceptions / Errors:**
  None documented

#### GetContentByName
- **Endpoint / Signature:** `string GetContentByName ( string name )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | name | `System String` | (Not documented in source) |
- **Returns:** String
- **Exceptions / Errors:**
  None documented

#### GetCreditCardTypes
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCurrencies
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetCustomCurrencies
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetDecorations
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetEvents
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetFeeProperties
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetFeeSchedules
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetLanguages
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetLocations
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetRandomBanners
- **Endpoint / Signature:** `List < Banner > GetRandomBanners ( string bannerLocation , int quantityNeeded , List < Category > categories )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | bannerLocation | `System String` | (Not documented in source) |
  | quantityNeeded | `System Int32` | (Not documented in source) |
  | categories | `System.Collections.Generic List Category` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetShippingMethods
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### GetSiteProperties
- **Endpoint / Signature:** `(Not documented in source)`
- **Description:** (Not documented in source)
- **Parameters:**
  None
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### ParseNewStateData
- **Endpoint / Signature:** `List < State > ParseNewStateData ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** List
- **Exceptions / Errors:**
  None documented

#### SaveCurrencyConversions
- **Endpoint / Signature:** `void SaveCurrencyConversions ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetContent
- **Endpoint / Signature:** `void SetContent ( string actingUserName , Content content )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | content | `vendor.framework.DTO Content` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCountryEnabled
- **Endpoint / Signature:** `void SetCountryEnabled ( string actingUserName , int countryID , bool enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | countryID | `System Int32` | (Not documented in source) |
  | enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCreditCardTypes
- **Endpoint / Signature:** `void SetCreditCardTypes ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetCurrencies
- **Endpoint / Signature:** `void SetCurrencies ( string actingUserName , string currencyCodes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | currencyCodes | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetLanguages
- **Endpoint / Signature:** `void SetLanguages ( string actingUserName , string languageCodes )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | languageCodes | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### SetStateEnabled
- **Endpoint / Signature:** `void SetStateEnabled ( string actingUserName , int stateID , bool enabled )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | stateID | `System Int32` | (Not documented in source) |
  | enabled | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateAllFeeProperties
- **Endpoint / Signature:** `void UpdateAllFeeProperties ( string actingUserName , List < FeeProperty > allFeeProperties )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | allFeeProperties | `System.Collections.Generic List FeeProperty` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateBanner
- **Endpoint / Signature:** `Banner UpdateBanner ( string actingUserName , UserInput userInput )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | userInput | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** Banner
- **Exceptions / Errors:**
  None documented

#### UpdateCountry
- **Endpoint / Signature:** `void UpdateCountry ( string actingUserName , Country country )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | country | `vendor.framework.DTO Country` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateDecoration
- **Endpoint / Signature:** `void UpdateDecoration ( string actingUserName , int id , string Name , string Description , decimal Amount , string FormatString , string ValidFields , bool PayToProceed )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Amount | `System Decimal` | (Not documented in source) |
  | FormatString | `System String` | (Not documented in source) |
  | ValidFields | `System String` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateEventFee
- **Endpoint / Signature:** `void UpdateEventFee ( string actingUserName , int id , int ListingType , int Event , bool PayToProceed , string Description , string Name )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | ListingType | `System Int32` | (Not documented in source) |
  | Event | `System Int32` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Name | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateFeeTier
- **Endpoint / Signature:** `void UpdateFeeTier ( string actingUserName , int id , decimal LowerBoundInclusive , decimal UpperBoundExclusive , decimal Value , string ValueType )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | LowerBoundInclusive | `System Decimal` | (Not documented in source) |
  | UpperBoundExclusive | `System Decimal` | (Not documented in source) |
  | Value | `System Decimal` | (Not documented in source) |
  | ValueType | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateLocation
- **Endpoint / Signature:** `void UpdateLocation ( string actingUserName , int id , string Description , decimal Amount , bool PayToProceed )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | id | `System Int32` | (Not documented in source) |
  | Description | `System String` | (Not documented in source) |
  | Amount | `System Decimal` | (Not documented in source) |
  | PayToProceed | `System Boolean` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateProperties
- **Endpoint / Signature:** `void UpdateProperties ( string actingUserName , List < CustomProperty > properties , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | properties | `System.Collections.Generic List CustomProperty` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateProperty
- **Endpoint / Signature:** `void UpdateProperty ( string actingUserName , string propertyName , string newValue , string culture )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | propertyName | `System String` | (Not documented in source) |
  | newValue | `System String` | (Not documented in source) |
  | culture | `System String` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateShippingMethods
- **Endpoint / Signature:** `void UpdateShippingMethods ( string actingUserName , UserInput input )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | input | `vendor.framework.DTO UserInput` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented

#### UpdateState
- **Endpoint / Signature:** `void UpdateState ( string actingUserName , State state )`
- **Description:** (Not documented in source)
- **Parameters:**
  | Name | Type | Description |
  |------|------|-------------|
  | actingUserName | `System String` | (Not documented in source) |
  | state | `vendor.framework.DTO State` | (Not documented in source) |
- **Returns:** (Not documented in source)
- **Exceptions / Errors:**
  None documented



---
