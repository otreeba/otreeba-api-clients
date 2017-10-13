# \EdiblesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetEdibleByOcpc**](EdiblesApi.md#GetEdibleByOcpc) | **Get** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
[**GetEdibles**](EdiblesApi.md#GetEdibles) | **Get** /edibles | Get a list of all current edibles.


# **GetEdibleByOcpc**
> Edible GetEdibleByOcpc($ocpc)

Find edible by Open Cannabis Product Code (OCPC).

Returns a single edible.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the edible to return. | 

### Return type

[**Edible**](Edible.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetEdibles**
> InlineResponse2002 GetEdibles($page, $count, $sort)

Get a list of all current edibles.

Returns a paginated list of edibles.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2002**](inline_response_200_2.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

