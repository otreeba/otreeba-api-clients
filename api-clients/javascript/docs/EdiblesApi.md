# OtreebaOpenCannabisApi.EdiblesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEdibleByOcpc**](EdiblesApi.md#getEdibleByOcpc) | **GET** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
[**getEdibles**](EdiblesApi.md#getEdibles) | **GET** /edibles | Get a list of all current edibles.


<a name="getEdibleByOcpc"></a>
# **getEdibleByOcpc**
> Edible getEdibleByOcpc(ocpc)

Find edible by Open Cannabis Product Code (OCPC).

Returns a single edible.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');
var defaultClient = OtreebaOpenCannabisApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new OtreebaOpenCannabisApi.EdiblesApi();

var ocpc = "ocpc_example"; // String | OCPC of the edible to return.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getEdibleByOcpc(ocpc, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the edible to return. | 

### Return type

[**Edible**](Edible.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getEdibles"></a>
# **getEdibles**
> InlineResponse2002 getEdibles(opts)

Get a list of all current edibles.

Returns a paginated list of edibles.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');
var defaultClient = OtreebaOpenCannabisApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new OtreebaOpenCannabisApi.EdiblesApi();

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
apiInstance.getEdibles(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

