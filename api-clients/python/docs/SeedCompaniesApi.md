# swagger_client.SeedCompaniesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_seed_companies**](SeedCompaniesApi.md#get_seed_companies) | **GET** /seed-companies | Get a list of all current seed companies.
[**get_seed_company_by_ocpc**](SeedCompaniesApi.md#get_seed_company_by_ocpc) | **GET** /seed-companies/{ocpc} | Find seed company by Open Cannabis Product Code (OCPC).
[**get_seed_company_strains_by_ocpc**](SeedCompaniesApi.md#get_seed_company_strains_by_ocpc) | **GET** /seed-companies/{ocpc}/strains | Find strains for a seed company by Open Cannabis Product Code (OCPC).


# **get_seed_companies**
> InlineResponse200 get_seed_companies(page=page, count=count, sort=sort)

Get a list of all current seed companies.

Returns a paginated list of seed companies.

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
swagger_client.configuration.api_key['X-API-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# swagger_client.configuration.api_key_prefix['X-API-Key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.SeedCompaniesApi()
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current seed companies.
    api_response = api_instance.get_seed_companies(page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeedCompaniesApi->get_seed_companies: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_seed_company_by_ocpc**
> SeedCompany get_seed_company_by_ocpc(ocpc)

Find seed company by Open Cannabis Product Code (OCPC).

Returns a single seed company.

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
swagger_client.configuration.api_key['X-API-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# swagger_client.configuration.api_key_prefix['X-API-Key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.SeedCompaniesApi()
ocpc = 'ocpc_example' # str | OCPC of the seed company to return.

try: 
    # Find seed company by Open Cannabis Product Code (OCPC).
    api_response = api_instance.get_seed_company_by_ocpc(ocpc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeedCompaniesApi->get_seed_company_by_ocpc: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the seed company to return. | 

### Return type

[**SeedCompany**](SeedCompany.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_seed_company_strains_by_ocpc**
> InlineResponse2001 get_seed_company_strains_by_ocpc(ocpc, page=page, count=count)

Find strains for a seed company by Open Cannabis Product Code (OCPC).

Returns a paginated list of strains for a single seed company.

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
swagger_client.configuration.api_key['X-API-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# swagger_client.configuration.api_key_prefix['X-API-Key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.SeedCompaniesApi()
ocpc = 'ocpc_example' # str | OCPC of the seed company to return strains for.
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)

try: 
    # Find strains for a seed company by Open Cannabis Product Code (OCPC).
    api_response = api_instance.get_seed_company_strains_by_ocpc(ocpc, page=page, count=count)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeedCompaniesApi->get_seed_company_strains_by_ocpc: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the seed company to return strains for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

