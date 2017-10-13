# \FlowersApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetFlowerByOcpc**](FlowersApi.md#GetFlowerByOcpc) | **Get** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
[**GetFlowers**](FlowersApi.md#GetFlowers) | **Get** /flowers | Get a list of all current flowers.


# **GetFlowerByOcpc**
> Flower GetFlowerByOcpc($ocpc)

Find flower by Open Cannabis Product Code (OCPC).

Returns a single flower.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the flower to return. | 

### Return type

[**Flower**](Flower.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetFlowers**
> InlineResponse2004 GetFlowers($page, $count, $sort)

Get a list of all current flowers.

Returns a paginated list of flowers.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2004**](inline_response_200_4.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

