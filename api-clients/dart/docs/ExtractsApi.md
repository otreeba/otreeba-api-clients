# swagger.api.ExtractsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExtractByOcpc**](ExtractsApi.md#getExtractByOcpc) | **GET** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
[**getExtracts**](ExtractsApi.md#getExtracts) | **GET** /extracts | Get a list of all current extracts.


# **getExtractByOcpc**
> Extract getExtractByOcpc(ocpc)

Find extract by Open Cannabis Product Code (OCPC).

Returns a single extract.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExtractsApi();
var ocpc = ocpc_example; // String | OCPC of the extract to return.

try { 
    var result = api_instance.getExtractByOcpc(ocpc);
    print(result);
} catch (e) {
    print("Exception when calling ExtractsApi->getExtractByOcpc: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExtracts**
> InlineResponse2003 getExtracts(page, count, sort)

Get a list of all current extracts.

Returns a paginated list of extracts.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExtractsApi();
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getExtracts(page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling ExtractsApi->getExtracts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

