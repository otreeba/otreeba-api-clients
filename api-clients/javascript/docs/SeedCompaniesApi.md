# OtreebaOpenCannabisApi.SeedCompaniesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSeedCompanies**](SeedCompaniesApi.md#getSeedCompanies) | **GET** /seed-companies | Get a list of all current seed companies.
[**getSeedCompanyByOcpc**](SeedCompaniesApi.md#getSeedCompanyByOcpc) | **GET** /seed-companies/{ocpc} | Find seed company by Open Cannabis Product Code (OCPC).
[**getSeedCompanyStrainsByOcpc**](SeedCompaniesApi.md#getSeedCompanyStrainsByOcpc) | **GET** /seed-companies/{ocpc}/strains | Find strains for a seed company by Open Cannabis Product Code (OCPC).


<a name="getSeedCompanies"></a>
# **getSeedCompanies**
> InlineResponse2001 getSeedCompanies(opts)

Get a list of all current seed companies.

Returns a paginated list of seed companies.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.SeedCompaniesApi();

var opts = { 
  'page': 56, // Number | Page to be returned.
  'count': 10, // Number | The number of items to return. Default 10. Max 50.
  'sort': "-createdAt" // String | How to sort the items.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getSeedCompanies(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSeedCompanyByOcpc"></a>
# **getSeedCompanyByOcpc**
> SeedCompany getSeedCompanyByOcpc(ocpc)

Find seed company by Open Cannabis Product Code (OCPC).

Returns a single seed company.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.SeedCompaniesApi();

var ocpc = "ocpc_example"; // String | OCPC of the seed company to return.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getSeedCompanyByOcpc(ocpc, callback);
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

<a name="getSeedCompanyStrainsByOcpc"></a>
# **getSeedCompanyStrainsByOcpc**
> InlineResponse200 getSeedCompanyStrainsByOcpc(ocpc, opts)

Find strains for a seed company by Open Cannabis Product Code (OCPC).

Returns a paginated list of strains for a single seed company.

### Example
```javascript
var OtreebaOpenCannabisApi = require('otreeba_open_cannabis_api');

var apiInstance = new OtreebaOpenCannabisApi.SeedCompaniesApi();

var ocpc = "ocpc_example"; // String | OCPC of the seed company to return strains for.

var opts = { 
  'page': 56, // Number | Page to be returned.
  'count': 10 // Number | The number of items to return. Default 10. Max 50.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getSeedCompanyStrainsByOcpc(ocpc, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the seed company to return strains for. | 
 **page** | **Number**| Page to be returned. | [optional] 
 **count** | **Number**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

