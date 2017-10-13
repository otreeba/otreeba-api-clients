# \SeedCompaniesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSeedCompanies**](SeedCompaniesApi.md#GetSeedCompanies) | **Get** /seed-companies | Get a list of all current seed companies.
[**GetSeedCompanyByOcpc**](SeedCompaniesApi.md#GetSeedCompanyByOcpc) | **Get** /seed-companies/{ocpc} | Find seed company by Open Cannabis Product Code (OCPC).
[**GetSeedCompanyStrainsByOcpc**](SeedCompaniesApi.md#GetSeedCompanyStrainsByOcpc) | **Get** /seed-companies/{ocpc}/strains | Find strains for a seed company by Open Cannabis Product Code (OCPC).


# **GetSeedCompanies**
> InlineResponse200 GetSeedCompanies($page, $count, $sort)

Get a list of all current seed companies.

Returns a paginated list of seed companies.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSeedCompanyByOcpc**
> SeedCompany GetSeedCompanyByOcpc($ocpc)

Find seed company by Open Cannabis Product Code (OCPC).

Returns a single seed company.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the seed company to return. | 

### Return type

[**SeedCompany**](SeedCompany.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSeedCompanyStrainsByOcpc**
> InlineResponse2001 GetSeedCompanyStrainsByOcpc($ocpc, $page, $count)

Find strains for a seed company by Open Cannabis Product Code (OCPC).

Returns a paginated list of strains for a single seed company.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the seed company to return strains for. | 
 **page** | **int32**| Page to be returned. | [optional] 
 **count** | **int32**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]

### Return type

[**InlineResponse2001**](inline_response_200_1.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

