# OtreebaOpenCannabisApi.StudiesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStudies**](StudiesApi.md#getStudies) | **GET** /studies | Get a list of all current studies.
[**getStudiesByCondition**](StudiesApi.md#getStudiesByCondition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**getStudiesConditions**](StudiesApi.md#getStudiesConditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
[**getStudyByIdentifier**](StudiesApi.md#getStudyByIdentifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


<a name="getStudies"></a>
# **getStudies**
> InlineResponse20012 getStudies(opts)

Get a list of all current studies.

Returns a paginated list of studies.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');
var defaultClient = OtreebaOpenCannabisApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new OtreebaOpenCannabisApi.StudiesApi();

var opts = { 
  'page': 56, // Number | Page to be returned.
  'count': 10, // Number | The number of items to return. Default 10. Max 50.
  'sort': "-createdAt" // String | How to sort the items.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getStudies(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStudiesByCondition"></a>
# **getStudiesByCondition**
> InlineResponse20013 getStudiesByCondition(conditionSlug, opts)

Get a list of all current studies for a given condition.

Returns a paginated list of studies.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');
var defaultClient = OtreebaOpenCannabisApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new OtreebaOpenCannabisApi.StudiesApi();

var conditionSlug = "conditionSlug_example"; // String | Slug of the condition to return studies for.

var opts = { 
  'page': 56, // Number | Page to be returned.
  'count': 10, // Number | The number of items to return. Default 10. Max 50.
  'sort': "-year" // String | How to sort the items.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getStudiesByCondition(conditionSlug, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditionSlug** | **String**| Slug of the condition to return studies for. | 
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -year]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStudiesConditions"></a>
# **getStudiesConditions**
> Object getStudiesConditions(opts)

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');
var defaultClient = OtreebaOpenCannabisApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new OtreebaOpenCannabisApi.StudiesApi();

var opts = { 
  'sort': "name" // String | How to sort the items.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getStudiesConditions(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| How to sort the items. | [optional] [default to name]

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStudyByIdentifier"></a>
# **getStudyByIdentifier**
> Study getStudyByIdentifier(identifierType, identifier)

Find study by DOI, PubMed ID, or slug.

Returns a single study.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');
var defaultClient = OtreebaOpenCannabisApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new OtreebaOpenCannabisApi.StudiesApi();

var identifierType = "identifierType_example"; // String | Type of identifier to for the study to return.

var identifier = "identifier_example"; // String | Identifier for the study to return.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getStudyByIdentifier(identifierType, identifier, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierType** | **String**| Type of identifier to for the study to return. | 
 **identifier** | **String**| Identifier for the study to return. | 

### Return type

[**Study**](Study.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

