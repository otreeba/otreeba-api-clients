# swagger.api.FlowersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFlowerByOcpc**](FlowersApi.md#getFlowerByOcpc) | **GET** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
[**getFlowers**](FlowersApi.md#getFlowers) | **GET** /flowers | Get a list of all current flowers.


# **getFlowerByOcpc**
> Flower getFlowerByOcpc(ocpc)

Find flower by Open Cannabis Product Code (OCPC).

Returns a single flower.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FlowersApi();
var ocpc = ocpc_example; // String | OCPC of the flower to return.

try { 
    var result = api_instance.getFlowerByOcpc(ocpc);
    print(result);
} catch (e) {
    print("Exception when calling FlowersApi->getFlowerByOcpc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the flower to return. | 

### Return type

[**Flower**](Flower.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFlowers**
> InlineResponse2004 getFlowers(page, count, sort)

Get a list of all current flowers.

Returns a paginated list of flowers.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FlowersApi();
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getFlowers(page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling FlowersApi->getFlowers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

