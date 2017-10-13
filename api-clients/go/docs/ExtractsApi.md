# \ExtractsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetExtractByOcpc**](ExtractsApi.md#GetExtractByOcpc) | **Get** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
[**GetExtracts**](ExtractsApi.md#GetExtracts) | **Get** /extracts | Get a list of all current extracts.


# **GetExtractByOcpc**
> Extract GetExtractByOcpc($ocpc)

Find extract by Open Cannabis Product Code (OCPC).

Returns a single extract.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the extract to return. | 

### Return type

[**Extract**](Extract.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetExtracts**
> InlineResponse2003 GetExtracts($page, $count, $sort)

Get a list of all current extracts.

Returns a paginated list of extracts.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2003**](inline_response_200_3.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

