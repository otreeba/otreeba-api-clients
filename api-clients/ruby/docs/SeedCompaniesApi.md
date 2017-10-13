# SwaggerClient::SeedCompaniesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_seed_companies**](SeedCompaniesApi.md#get_seed_companies) | **GET** /seed-companies | Get a list of all current seed companies.
[**get_seed_company_by_ocpc**](SeedCompaniesApi.md#get_seed_company_by_ocpc) | **GET** /seed-companies/{ocpc} | Find seed company by Open Cannabis Product Code (OCPC).
[**get_seed_company_strains_by_ocpc**](SeedCompaniesApi.md#get_seed_company_strains_by_ocpc) | **GET** /seed-companies/{ocpc}/strains | Find strains for a seed company by Open Cannabis Product Code (OCPC).


# **get_seed_companies**
> InlineResponse200 get_seed_companies(opts)

Get a list of all current seed companies.

Returns a paginated list of seed companies.

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

api_instance = SwaggerClient::SeedCompaniesApi.new

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current seed companies.
  result = api_instance.get_seed_companies(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SeedCompaniesApi->get_seed_companies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_seed_company_by_ocpc**
> SeedCompany get_seed_company_by_ocpc(ocpc)

Find seed company by Open Cannabis Product Code (OCPC).

Returns a single seed company.

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

api_instance = SwaggerClient::SeedCompaniesApi.new

ocpc = "ocpc_example" # String | OCPC of the seed company to return.


begin
  #Find seed company by Open Cannabis Product Code (OCPC).
  result = api_instance.get_seed_company_by_ocpc(ocpc)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SeedCompaniesApi->get_seed_company_by_ocpc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the seed company to return. | 

### Return type

[**SeedCompany**](SeedCompany.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_seed_company_strains_by_ocpc**
> InlineResponse2001 get_seed_company_strains_by_ocpc(ocpc, opts)

Find strains for a seed company by Open Cannabis Product Code (OCPC).

Returns a paginated list of strains for a single seed company.

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

api_instance = SwaggerClient::SeedCompaniesApi.new

ocpc = "ocpc_example" # String | OCPC of the seed company to return strains for.

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10 # Integer | The number of items to return. Default 10. Max 50.
}

begin
  #Find strains for a seed company by Open Cannabis Product Code (OCPC).
  result = api_instance.get_seed_company_strains_by_ocpc(ocpc, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SeedCompaniesApi->get_seed_company_strains_by_ocpc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the seed company to return strains for. | 
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



