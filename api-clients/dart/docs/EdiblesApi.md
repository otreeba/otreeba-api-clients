# swagger.api.EdiblesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEdibleByOcpc**](EdiblesApi.md#getEdibleByOcpc) | **GET** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
[**getEdibles**](EdiblesApi.md#getEdibles) | **GET** /edibles | Get a list of all current edibles.


# **getEdibleByOcpc**
> Edible getEdibleByOcpc(ocpc)

Find edible by Open Cannabis Product Code (OCPC).

Returns a single edible.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EdiblesApi();
var ocpc = ocpc_example; // String | OCPC of the edible to return.

try { 
    var result = api_instance.getEdibleByOcpc(ocpc);
    print(result);
} catch (e) {
    print("Exception when calling EdiblesApi->getEdibleByOcpc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the edible to return. | 

### Return type

[**Edible**](Edible.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdibles**
> InlineResponse2002 getEdibles(page, count, sort)

Get a list of all current edibles.

Returns a paginated list of edibles.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EdiblesApi();
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getEdibles(page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling EdiblesApi->getEdibles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

