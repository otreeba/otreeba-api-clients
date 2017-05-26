# SwaggerClient::BrandsApi

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
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BrandsApi.new

ocpc = "ocpc_example" # String | OCPC of the brand to return.


begin
  #Find brand by Open Cannabis Product Code (OCPC).
  result = api_instance.get_brand_by_ocpc(ocpc)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->get_brand_by_ocpc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to return. | 

### Return type

[**Brand**](Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_brand_edibles**
> InlineResponse2008 get_brand_edibles(ocpc, opts)

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BrandsApi.new

ocpc = "ocpc_example" # String | OCPC of the brand to list edibles for.

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current edibles for the given brand.
  result = api_instance.get_brand_edibles(ocpc, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->get_brand_edibles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list edibles for. | 
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_brand_extracts**
> InlineResponse2007 get_brand_extracts(ocpc, opts)

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BrandsApi.new

ocpc = "ocpc_example" # String | OCPC of the brand to list extracts for.

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current extracts for the given brand.
  result = api_instance.get_brand_extracts(ocpc, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->get_brand_extracts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list extracts for. | 
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_brand_flowers**
> InlineResponse2006 get_brand_flowers(ocpc, opts)

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BrandsApi.new

ocpc = "ocpc_example" # String | OCPC of the brand to list flowers for.

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current flowers for the given brand.
  result = api_instance.get_brand_flowers(ocpc, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->get_brand_flowers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list flowers for. | 
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_brand_products**
> InlineResponse2009 get_brand_products(ocpc, opts)

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BrandsApi.new

ocpc = "ocpc_example" # String | OCPC of the brand to list products for.

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current products for the given brand.
  result = api_instance.get_brand_products(ocpc, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->get_brand_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list products for. | 
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_brands**
> InlineResponse2005 get_brands(opts)

Get a list of all current brands.

Returns a paginated list of brands.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BrandsApi.new

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current brands.
  result = api_instance.get_brands(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->get_brands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



