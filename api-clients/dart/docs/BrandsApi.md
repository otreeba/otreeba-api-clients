# swagger.api.BrandsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBrandByOcpc**](BrandsApi.md#getBrandByOcpc) | **GET** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
[**getBrandEdibles**](BrandsApi.md#getBrandEdibles) | **GET** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
[**getBrandExtracts**](BrandsApi.md#getBrandExtracts) | **GET** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
[**getBrandFlowers**](BrandsApi.md#getBrandFlowers) | **GET** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
[**getBrandProducts**](BrandsApi.md#getBrandProducts) | **GET** /brands/{ocpc}/products | Get a list of all current products for the given brand.
[**getBrands**](BrandsApi.md#getBrands) | **GET** /brands | Get a list of all current brands.


# **getBrandByOcpc**
> Brand getBrandByOcpc(ocpc)

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new BrandsApi();
var ocpc = ocpc_example; // String | OCPC of the brand to return.

try { 
    var result = api_instance.getBrandByOcpc(ocpc);
    print(result);
} catch (e) {
    print("Exception when calling BrandsApi->getBrandByOcpc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to return. | 

### Return type

[**Brand**](Brand.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandEdibles**
> InlineResponse2008 getBrandEdibles(ocpc, page, count, sort)

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new BrandsApi();
var ocpc = ocpc_example; // String | OCPC of the brand to list edibles for.
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getBrandEdibles(ocpc, page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling BrandsApi->getBrandEdibles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list edibles for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandExtracts**
> InlineResponse2007 getBrandExtracts(ocpc, page, count, sort)

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new BrandsApi();
var ocpc = ocpc_example; // String | OCPC of the brand to list extracts for.
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getBrandExtracts(ocpc, page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling BrandsApi->getBrandExtracts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list extracts for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandFlowers**
> InlineResponse2006 getBrandFlowers(ocpc, page, count, sort)

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new BrandsApi();
var ocpc = ocpc_example; // String | OCPC of the brand to list flowers for.
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getBrandFlowers(ocpc, page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling BrandsApi->getBrandFlowers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list flowers for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandProducts**
> InlineResponse2009 getBrandProducts(ocpc, page, count, sort)

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new BrandsApi();
var ocpc = ocpc_example; // String | OCPC of the brand to list products for.
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getBrandProducts(ocpc, page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling BrandsApi->getBrandProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list products for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrands**
> InlineResponse2005 getBrands(page, count, sort)

Get a list of all current brands.

Returns a paginated list of brands.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new BrandsApi();
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getBrands(page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling BrandsApi->getBrands: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

