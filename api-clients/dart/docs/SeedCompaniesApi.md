# swagger.api.SeedCompaniesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSeedCompanies**](SeedCompaniesApi.md#getSeedCompanies) | **GET** /seed-companies | Get a list of all current seed companies.
[**getSeedCompanyByOcpc**](SeedCompaniesApi.md#getSeedCompanyByOcpc) | **GET** /seed-companies/{ocpc} | Find seed company by Open Cannabis Product Code (OCPC).
[**getSeedCompanyStrainsByOcpc**](SeedCompaniesApi.md#getSeedCompanyStrainsByOcpc) | **GET** /seed-companies/{ocpc}/strains | Find strains for a seed company by Open Cannabis Product Code (OCPC).


# **getSeedCompanies**
> InlineResponse2001 getSeedCompanies(page, count, sort)

Get a list of all current seed companies.

Returns a paginated list of seed companies.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SeedCompaniesApi();
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.
var sort = sort_example; // String | How to sort the items.

try { 
    var result = api_instance.getSeedCompanies(page, count, sort);
    print(result);
} catch (e) {
    print("Exception when calling SeedCompaniesApi->getSeedCompanies: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeedCompanyByOcpc**
> SeedCompany getSeedCompanyByOcpc(ocpc)

Find seed company by Open Cannabis Product Code (OCPC).

Returns a single seed company.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SeedCompaniesApi();
var ocpc = ocpc_example; // String | OCPC of the seed company to return.

try { 
    var result = api_instance.getSeedCompanyByOcpc(ocpc);
    print(result);
} catch (e) {
    print("Exception when calling SeedCompaniesApi->getSeedCompanyByOcpc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the seed company to return. | 

### Return type

[**SeedCompany**](SeedCompany.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeedCompanyStrainsByOcpc**
> InlineResponse200 getSeedCompanyStrainsByOcpc(ocpc, page, count)

Find strains for a seed company by Open Cannabis Product Code (OCPC).

Returns a paginated list of strains for a single seed company.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SeedCompaniesApi();
var ocpc = ocpc_example; // String | OCPC of the seed company to return strains for.
var page = 56; // int | Page to be returned.
var count = 56; // int | The number of items to return. Default 10. Max 50.

try { 
    var result = api_instance.getSeedCompanyStrainsByOcpc(ocpc, page, count);
    print(result);
} catch (e) {
    print("Exception when calling SeedCompaniesApi->getSeedCompanyStrainsByOcpc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the seed company to return strains for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

