# OtreebaOpenCannabisApi.StrainsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStrainByOcpc**](StrainsApi.md#getStrainByOcpc) | **GET** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
[**getStrains**](StrainsApi.md#getStrains) | **GET** /strains | Get a list of all current strains.


<a name="getStrainByOcpc"></a>
# **getStrainByOcpc**
> Strain getStrainByOcpc(ocpc)

Find strain by Open Cannabis Product Code (OCPC).

Returns a single strain.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.StrainsApi();

var ocpc = "ocpc_example"; // String | OCPC of the strain to return.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getStrainByOcpc(ocpc, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the strain to return. | 

### Return type

[**Strain**](Strain.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStrains"></a>
# **getStrains**
> InlineResponse20011 getStrains(opts)

Get a list of all current strains.

Returns a paginated list of strains.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.StrainsApi();

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
apiInstance.getStrains(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

