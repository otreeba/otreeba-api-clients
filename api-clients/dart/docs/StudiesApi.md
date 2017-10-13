# swagger.api.StudiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStudies**](StudiesApi.md#getStudies) | **GET** /studies | Get a list of all current studies.
[**getStudiesByCondition**](StudiesApi.md#getStudiesByCondition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**getStudiesConditions**](StudiesApi.md#getStudiesConditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
[**getStudyByIdentifier**](StudiesApi.md#getStudyByIdentifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


# **getStudies**
> InlineResponse20012 getStudies(page, count, sort)

Get a list of all current studies.

Returns a paginated list of studies.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new StudiesApi();
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getStudies(page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling StudiesApi->getStudies: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudiesByCondition**
> InlineResponse20013 getStudiesByCondition(conditionSlug, page, count, sort)

Get a list of all current studies for a given condition.

Returns a paginated list of studies.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new StudiesApi();
var conditionSlug = conditionSlug_example; // String | Slug of the condition to return studies for.
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getStudiesByCondition(conditionSlug, page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling StudiesApi->getStudiesByCondition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditionSlug** | **String**| Slug of the condition to return studies for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -year]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudiesConditions**
> Object getStudiesConditions(sort)

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new StudiesApi();
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getStudiesConditions(sort);
    print(result);
} catch (e) {
    print("Exception when calling StudiesApi->getStudiesConditions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| How to sort the items. | [optional] [default to name]

### Return type

[**Object**](Object.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudyByIdentifier**
> Study getStudyByIdentifier(identifierType, identifier)

Find study by DOI, PubMed ID, or slug.

Returns a single study.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: api_key
//swagger.api.Configuration.apiKey{'X-API-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-Key'} = "Bearer";

var api_instance = new StudiesApi();
var identifierType = identifierType_example; // String | Type of identifier to for the study to return.
var identifier = identifier_example; // String | Identifier for the study to return.

try { 
    var result = api_instance.getStudyByIdentifier(identifierType, identifier);
    print(result);
} catch (e) {
    print("Exception when calling StudiesApi->getStudyByIdentifier: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierType** | **String**| Type of identifier to for the study to return. | 
 **identifier** | **String**| Identifier for the study to return. | 

### Return type

[**Study**](Study.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

