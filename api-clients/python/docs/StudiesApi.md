# swagger_client.StudiesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_studies**](StudiesApi.md#get_studies) | **GET** /studies | Get a list of all current studies.
[**get_studies_by_condition**](StudiesApi.md#get_studies_by_condition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**get_studies_conditions**](StudiesApi.md#get_studies_conditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
[**get_study_by_identifier**](StudiesApi.md#get_study_by_identifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


# **get_studies**
> InlineResponse20012 get_studies(page=page, count=count, sort=sort)

Get a list of all current studies.

Returns a paginated list of studies.

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
api_instance = swagger_client.StudiesApi()
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-createdAt' # str | How to sort the items. (optional) (default to -createdAt)

try: 
    # Get a list of all current studies.
    api_response = api_instance.get_studies(page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->get_studies: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_studies_by_condition**
> InlineResponse20013 get_studies_by_condition(condition_slug, page=page, count=count, sort=sort)

Get a list of all current studies for a given condition.

Returns a paginated list of studies.

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
api_instance = swagger_client.StudiesApi()
condition_slug = 'condition_slug_example' # str | Slug of the condition to return studies for.
page = 56 # int | Page to be returned. (optional)
count = 10 # int | The number of items to return. Default 10. Max 50. (optional) (default to 10)
sort = '-year' # str | How to sort the items. (optional) (default to -year)

try: 
    # Get a list of all current studies for a given condition.
    api_response = api_instance.get_studies_by_condition(condition_slug, page=page, count=count, sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->get_studies_by_condition: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **condition_slug** | **str**| Slug of the condition to return studies for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **str**| How to sort the items. | [optional] [default to -year]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_studies_conditions**
> object get_studies_conditions(sort=sort)

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.

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
api_instance = swagger_client.StudiesApi()
sort = 'name' # str | How to sort the items. (optional) (default to name)

try: 
    # Get a list of all current conditions for studies.
    api_response = api_instance.get_studies_conditions(sort=sort)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->get_studies_conditions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **str**| How to sort the items. | [optional] [default to name]

### Return type

**object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_study_by_identifier**
> Study get_study_by_identifier(identifier_type, identifier)

Find study by DOI, PubMed ID, or slug.

Returns a single study.

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
api_instance = swagger_client.StudiesApi()
identifier_type = 'identifier_type_example' # str | Type of identifier to for the study to return.
identifier = 'identifier_example' # str | Identifier for the study to return.

try: 
    # Find study by DOI, PubMed ID, or slug.
    api_response = api_instance.get_study_by_identifier(identifier_type, identifier)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->get_study_by_identifier: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier_type** | **str**| Type of identifier to for the study to return. | 
 **identifier** | **str**| Identifier for the study to return. | 

### Return type

[**Study**](Study.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

