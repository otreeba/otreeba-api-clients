# \StrainsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetStrainByOcpc**](StrainsApi.md#GetStrainByOcpc) | **Get** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
[**GetStrains**](StrainsApi.md#GetStrains) | **Get** /strains | Get a list of all current strains.


# **GetStrainByOcpc**
> Strain GetStrainByOcpc($ocpc)

Find strain by Open Cannabis Product Code (OCPC).

Returns a single strain.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the strain to return. | 

### Return type

[**Strain**](Strain.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetStrains**
> InlineResponse20011 GetStrains($page, $count, $sort)

Get a list of all current strains.

Returns a paginated list of strains.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20011**](inline_response_200_11.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

