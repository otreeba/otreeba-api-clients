# swagger_client.BrandsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_brand_by_ocpc**](BrandsApi.md#get_brand_by_ocpc) | **GET** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
[**get_brand_edibles**](BrandsApi.md#get_brand_edibles) | **GET** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
[**get_brand_extracts**](BrandsApi.md#get_brand_extracts) | **GET** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
[**get_brand_flowers**](BrandsApi.md#get_brand_flowers) | **GET** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
[**get_brand_products**](BrandsApi.md#get_brand_products) | **GET** /brands/{ocpc}/products | Get a list of all current products for the given brand.
[**get_brands**](BrandsApi.md#get_brands) | **GET** /brands | Get a list of all current brands.


# **get_brand_by_ocpc**
> Brand get_brand_by_ocpc(ocpc)

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.

### Example 
```python
from __future__ import print_statement
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BrandsApi()
ocpc = 'ocpc_example' # str | OCPC of the brand to return.

try: 
    # Find brand by Open Cannabis Product Code (OCPC).
    api_response = api_instance.get_brand_by_ocpc(ocpc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BrandsApi->get_brand_by_ocpc: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the brand to return. | 

### Return type

[**Brand**](Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brand_edibles**
> InlineResponse2008 get_brand_edibles(ocpc, page=page, count=count, sort=sort)

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.

### Example 
```python
from __future__ import print_statement
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BrandsApi()
ocpc = 'ocpc_example' # str | OCPC of the brand to list edibles for.
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current edibles for the given brand.
    api_response = api_instance.get_brand_edibles(ocpc, page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BrandsApi->get_brand_edibles: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the brand to list edibles for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brand_extracts**
> InlineResponse2007 get_brand_extracts(ocpc, page=page, count=count, sort=sort)

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.

### Example 
```python
from __future__ import print_statement
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BrandsApi()
ocpc = 'ocpc_example' # str | OCPC of the brand to list extracts for.
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current extracts for the given brand.
    api_response = api_instance.get_brand_extracts(ocpc, page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BrandsApi->get_brand_extracts: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the brand to list extracts for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brand_flowers**
> InlineResponse2006 get_brand_flowers(ocpc, page=page, count=count, sort=sort)

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.

### Example 
```python
from __future__ import print_statement
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BrandsApi()
ocpc = 'ocpc_example' # str | OCPC of the brand to list flowers for.
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current flowers for the given brand.
    api_response = api_instance.get_brand_flowers(ocpc, page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BrandsApi->get_brand_flowers: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the brand to list flowers for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brand_products**
> InlineResponse2009 get_brand_products(ocpc, page=page, count=count, sort=sort)

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example 
```python
from __future__ import print_statement
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BrandsApi()
ocpc = 'ocpc_example' # str | OCPC of the brand to list products for.
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current products for the given brand.
    api_response = api_instance.get_brand_products(ocpc, page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BrandsApi->get_brand_products: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **str**| OCPC of the brand to list products for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brands**
> InlineResponse2005 get_brands(page=page, count=count, sort=sort)

Get a list of all current brands.

Returns a paginated list of brands.

### Example 
```python
from __future__ import print_statement
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BrandsApi()
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current brands.
    api_response = api_instance.get_brands(page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BrandsApi->get_brands: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

