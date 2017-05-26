# OtreebaOpenCannabisApi.BrandsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBrandByOcpc**](BrandsApi.md#getBrandByOcpc) | **GET** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
[**getBrandEdibles**](BrandsApi.md#getBrandEdibles) | **GET** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
[**getBrandExtracts**](BrandsApi.md#getBrandExtracts) | **GET** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
[**getBrandFlowers**](BrandsApi.md#getBrandFlowers) | **GET** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
[**getBrandProducts**](BrandsApi.md#getBrandProducts) | **GET** /brands/{ocpc}/products | Get a list of all current products for the given brand.
[**getBrands**](BrandsApi.md#getBrands) | **GET** /brands | Get a list of all current brands.


<a name="getBrandByOcpc"></a>
# **getBrandByOcpc**
> Brand getBrandByOcpc(ocpc)

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.BrandsApi();

var ocpc = "ocpc_example"; // String | OCPC of the brand to return.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getBrandByOcpc(ocpc, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to return. | 

### Return type

[**Brand**](Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrandEdibles"></a>
# **getBrandEdibles**
> InlineResponse2008 getBrandEdibles(ocpc, opts)

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.BrandsApi();

var ocpc = "ocpc_example"; // String | OCPC of the brand to list edibles for.

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
apiInstance.getBrandEdibles(ocpc, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list edibles for. | 
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrandExtracts"></a>
# **getBrandExtracts**
> InlineResponse2007 getBrandExtracts(ocpc, opts)

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.BrandsApi();

var ocpc = "ocpc_example"; // String | OCPC of the brand to list extracts for.

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
apiInstance.getBrandExtracts(ocpc, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list extracts for. | 
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrandFlowers"></a>
# **getBrandFlowers**
> InlineResponse2006 getBrandFlowers(ocpc, opts)

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.BrandsApi();

var ocpc = "ocpc_example"; // String | OCPC of the brand to list flowers for.

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
apiInstance.getBrandFlowers(ocpc, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list flowers for. | 
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrandProducts"></a>
# **getBrandProducts**
> InlineResponse2009 getBrandProducts(ocpc, opts)

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.BrandsApi();

var ocpc = "ocpc_example"; // String | OCPC of the brand to list products for.

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
apiInstance.getBrandProducts(ocpc, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list products for. | 
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrands"></a>
# **getBrands**
> InlineResponse2005 getBrands(opts)

Get a list of all current brands.

Returns a paginated list of brands.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.BrandsApi();

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
apiInstance.getBrands(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

