# swagger_client.StrainsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_strain_by_ocpc**](StrainsApi.md#get_strain_by_ocpc) | **GET** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
[**get_strains**](StrainsApi.md#get_strains) | **GET** /strains | Get a list of all current strains.


# **get_strain_by_ocpc**
> Strain get_strain_by_ocpc(ocpc)

Find strain by Open Cannabis Product Code (OCPC).

Returns a single strain.

### Example 
```python
from __future__ import print_statement
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.StrainsApi()
ocpc = 'ocpc_example' # str | OCPC of the strain to return.

try: 
    # Find strain by Open Cannabis Product Code (OCPC).
    api_response = api_instance.get_strain_by_ocpc(ocpc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StrainsApi->get_strain_by_ocpc: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the strain to return. | 

### Return type

[**Strain**](Strain.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_strains**
> InlineResponse20011 get_strains(page=page, count=count, sort=sort)

Get a list of all current strains.

Returns a paginated list of strains.

### Example 
```python
from __future__ import print_statement
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.StrainsApi()
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current strains.
    api_response = api_instance.get_strains(page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StrainsApi->get_strains: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

