# swagger.api.ProductsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProductByOcpc**](ProductsApi.md#getProductByOcpc) | **GET** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
[**getProducts**](ProductsApi.md#getProducts) | **GET** /products | Get a list of all current products.


# **getProductByOcpc**
> Product getProductByOcpc(ocpc)

Find product by Open Cannabis Product Code (OCPC).

Returns a single product.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new ProductsApi();
var ocpc = ocpc_example; // String | OCPC of the product to return.

try { 
    var result = api_instance.getProductByOcpc(ocpc);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->getProductByOcpc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the product to return. | 

### Return type

[**Product**](Product.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProducts**
> InlineResponse20010 getProducts(page, count, sort)

Get a list of all current products.

Returns a paginated list of products.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new ProductsApi();
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getProducts(page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->getProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

