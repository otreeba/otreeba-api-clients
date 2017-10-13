# SwaggerClient::StudiesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_studies**](StudiesApi.md#get_studies) | **GET** /studies | Get a list of all current studies.
[**get_studies_by_condition**](StudiesApi.md#get_studies_by_condition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**get_studies_conditions**](StudiesApi.md#get_studies_conditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
[**get_study_by_identifier**](StudiesApi.md#get_study_by_identifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


# **get_studies**
> InlineResponse20012 get_studies(opts)

Get a list of all current studies.

Returns a paginated list of studies.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SwaggerClient::StudiesApi.new

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current studies.
  result = api_instance.get_studies(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StudiesApi->get_studies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_studies_by_condition**
> InlineResponse20013 get_studies_by_condition(condition_slug, opts)

Get a list of all current studies for a given condition.

Returns a paginated list of studies.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SwaggerClient::StudiesApi.new

condition_slug = "condition_slug_example" # String | Slug of the condition to return studies for.

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-year" # String | How to sort the items.
}

begin
  #Get a list of all current studies for a given condition.
  result = api_instance.get_studies_by_condition(condition_slug, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StudiesApi->get_studies_by_condition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **condition_slug** | **String**| Slug of the condition to return studies for. | 
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -year]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_studies_conditions**
> Object get_studies_conditions(opts)

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SwaggerClient::StudiesApi.new

opts = { 
  sort: "name" # String | How to sort the items.
}

begin
  #Get a list of all current conditions for studies.
  result = api_instance.get_studies_conditions(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StudiesApi->get_studies_conditions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| How to sort the items. | [optional] [default to name]

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_study_by_identifier**
> Study get_study_by_identifier(identifier_type, identifier)

Find study by DOI, PubMed ID, or slug.

Returns a single study.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SwaggerClient::StudiesApi.new

identifier_type = "identifier_type_example" # String | Type of identifier to for the study to return.

identifier = "identifier_example" # String | Identifier for the study to return.


begin
  #Find study by DOI, PubMed ID, or slug.
  result = api_instance.get_study_by_identifier(identifier_type, identifier)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StudiesApi->get_study_by_identifier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier_type** | **String**| Type of identifier to for the study to return. | 
 **identifier** | **String**| Identifier for the study to return. | 

### Return type

[**Study**](Study.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



