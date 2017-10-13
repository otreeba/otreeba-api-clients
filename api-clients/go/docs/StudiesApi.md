# \StudiesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetStudies**](StudiesApi.md#GetStudies) | **Get** /studies | Get a list of all current studies.
[**GetStudiesByCondition**](StudiesApi.md#GetStudiesByCondition) | **Get** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**GetStudiesConditions**](StudiesApi.md#GetStudiesConditions) | **Get** /studies/conditions | Get a list of all current conditions for studies.
[**GetStudyByIdentifier**](StudiesApi.md#GetStudyByIdentifier) | **Get** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


# **GetStudies**
> InlineResponse20012 GetStudies($page, $count, $sort)

Get a list of all current studies.

Returns a paginated list of studies.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20012**](inline_response_200_12.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetStudiesByCondition**
> InlineResponse20013 GetStudiesByCondition($conditionSlug, $page, $count, $sort)

Get a list of all current studies for a given condition.

Returns a paginated list of studies.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditionSlug** | **string**| Slug of the condition to return studies for. | 
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -year]

### Return type

[**InlineResponse20013**](inline_response_200_13.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetStudiesConditions**
> interface{} GetStudiesConditions($sort)

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **string**| How to sort the items. | [optional] [default to name]

### Return type

[**interface{}**](interface{}.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetStudyByIdentifier**
> Study GetStudyByIdentifier($identifierType, $identifier)

Find study by DOI, PubMed ID, or slug.

Returns a single study.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierType** | **string**| Type of identifier to for the study to return. | 
 **identifier** | **string**| Identifier for the study to return. | 

### Return type

[**Study**](Study.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

