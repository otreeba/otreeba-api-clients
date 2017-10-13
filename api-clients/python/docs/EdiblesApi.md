# swagger_client.EdiblesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_edible_by_ocpc**](EdiblesApi.md#get_edible_by_ocpc) | **GET** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
[**get_edibles**](EdiblesApi.md#get_edibles) | **GET** /edibles | Get a list of all current edibles.


# **get_edible_by_ocpc**
> Edible get_edible_by_ocpc(ocpc)

Find edible by Open Cannabis Product Code (OCPC).

Returns a single edible.

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
api_instance = swagger_client.EdiblesApi()
ocpc = 'ocpc_example' # str | OCPC of the edible to return.

try: 
    # Find edible by Open Cannabis Product Code (OCPC).
    api_response = api_instance.get_edible_by_ocpc(ocpc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdiblesApi->get_edible_by_ocpc: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the edible to return. | 

### Return type

[**Edible**](Edible.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_edibles**
> InlineResponse2002 get_edibles(page=page, count=count, sort=sort)

Get a list of all current edibles.

Returns a paginated list of edibles.

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
api_instance = swagger_client.EdiblesApi()
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current edibles.
    api_response = api_instance.get_edibles(page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EdiblesApi->get_edibles: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

