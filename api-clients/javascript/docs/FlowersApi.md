# OtreebaOpenCannabisApi.FlowersApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFlowerByOcpc**](FlowersApi.md#getFlowerByOcpc) | **GET** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
[**getFlowers**](FlowersApi.md#getFlowers) | **GET** /flowers | Get a list of all current flowers.


<a name="getFlowerByOcpc"></a>
# **getFlowerByOcpc**
> Flower getFlowerByOcpc(ocpc)

Find flower by Open Cannabis Product Code (OCPC).

Returns a single flower.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');
var defaultClient = OtreebaOpenCannabisApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new OtreebaOpenCannabisApi.FlowersApi();

var ocpc = "ocpc_example"; // String | OCPC of the flower to return.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getFlowerByOcpc(ocpc, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the flower to return. | 

### Return type

[**Flower**](Flower.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getFlowers"></a>
# **getFlowers**
> InlineResponse2004 getFlowers(opts)

Get a list of all current flowers.

Returns a paginated list of flowers.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');
var defaultClient = OtreebaOpenCannabisApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new OtreebaOpenCannabisApi.FlowersApi();

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
apiInstance.getFlowers(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

