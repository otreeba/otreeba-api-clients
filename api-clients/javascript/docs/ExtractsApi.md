# OtreebaOpenCannabisApi.ExtractsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExtractByOcpc**](ExtractsApi.md#getExtractByOcpc) | **GET** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
[**getExtracts**](ExtractsApi.md#getExtracts) | **GET** /extracts | Get a list of all current extracts.


<a name="getExtractByOcpc"></a>
# **getExtractByOcpc**
> Extract getExtractByOcpc(ocpc)

Find extract by Open Cannabis Product Code (OCPC).

Returns a single extract.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.ExtractsApi();

var ocpc = "ocpc_example"; // String | OCPC of the extract to return.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getExtractByOcpc(ocpc, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the extract to return. | 

### Return type

[**Extract**](Extract.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getExtracts"></a>
# **getExtracts**
> InlineResponse2003 getExtracts(opts)

Get a list of all current extracts.

Returns a paginated list of extracts.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.ExtractsApi();

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
apiInstance.getExtracts(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

