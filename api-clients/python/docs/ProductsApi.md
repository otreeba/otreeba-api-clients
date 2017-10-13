# swagger_client.ProductsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_product_by_ocpc**](ProductsApi.md#get_product_by_ocpc) | **GET** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
[**get_products**](ProductsApi.md#get_products) | **GET** /products | Get a list of all current products.


# **get_product_by_ocpc**
> Product get_product_by_ocpc(ocpc)

Find product by Open Cannabis Product Code (OCPC).

Returns a single product.

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
api_instance = swagger_client.ProductsApi()
ocpc = 'ocpc_example' # str | OCPC of the product to return.

try: 
    # Find product by Open Cannabis Product Code (OCPC).
    api_response = api_instance.get_product_by_ocpc(ocpc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->get_product_by_ocpc: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the product to return. | 

### Return type

[**Product**](Product.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_products**
> InlineResponse20010 get_products(page=page, count=count, sort=sort)

Get a list of all current products.

Returns a paginated list of products.

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
api_instance = swagger_client.ProductsApi()
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current products.
    api_response = api_instance.get_products(page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->get_products: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

