# \BrandsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBrandByOcpc**](BrandsApi.md#GetBrandByOcpc) | **Get** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
[**GetBrandEdibles**](BrandsApi.md#GetBrandEdibles) | **Get** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
[**GetBrandExtracts**](BrandsApi.md#GetBrandExtracts) | **Get** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
[**GetBrandFlowers**](BrandsApi.md#GetBrandFlowers) | **Get** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
[**GetBrandProducts**](BrandsApi.md#GetBrandProducts) | **Get** /brands/{ocpc}/products | Get a list of all current products for the given brand.
[**GetBrands**](BrandsApi.md#GetBrands) | **Get** /brands | Get a list of all current brands.


# **GetBrandByOcpc**
> Brand GetBrandByOcpc($ocpc)

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to return. | 

### Return type

[**Brand**](Brand.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetBrandEdibles**
> InlineResponse2008 GetBrandEdibles($ocpc, $page, $count, $sort)

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list edibles for. | 
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2008**](inline_response_200_8.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetBrandExtracts**
> InlineResponse2007 GetBrandExtracts($ocpc, $page, $count, $sort)

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list extracts for. | 
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2007**](inline_response_200_7.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetBrandFlowers**
> InlineResponse2006 GetBrandFlowers($ocpc, $page, $count, $sort)

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list flowers for. | 
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2006**](inline_response_200_6.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetBrandProducts**
> InlineResponse2009 GetBrandProducts($ocpc, $page, $count, $sort)

Get a list of all current products for the given brand.

Returns a paginated list of products.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list products for. | 
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2009**](inline_response_200_9.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetBrands**
> InlineResponse2005 GetBrands($page, $count, $sort)

Get a list of all current brands.

Returns a paginated list of brands.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2005**](inline_response_200_5.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

