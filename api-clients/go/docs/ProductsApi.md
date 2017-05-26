# \ProductsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetProductByOcpc**](ProductsApi.md#GetProductByOcpc) | **Get** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
[**GetProducts**](ProductsApi.md#GetProducts) | **Get** /products | Get a list of all current products.


# **GetProductByOcpc**
> Product GetProductByOcpc($ocpc)

Find product by Open Cannabis Product Code (OCPC).

Returns a single product.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the product to return. | 

### Return type

[**Product**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetProducts**
> InlineResponse20010 GetProducts($page, $count, $sort)

Get a list of all current products.

Returns a paginated list of products.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20010**](inline_response_200_10.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

