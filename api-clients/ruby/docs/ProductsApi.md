# SwaggerClient::ProductsApi

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
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

ocpc = "ocpc_example" # String | OCPC of the product to return.


begin
  #Find product by Open Cannabis Product Code (OCPC).
  result = api_instance.get_product_by_ocpc(ocpc)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->get_product_by_ocpc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the product to return. | 

### Return type

[**Product**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_products**
> InlineResponse20010 get_products(opts)

Get a list of all current products.

Returns a paginated list of products.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current products.
  result = api_instance.get_products(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->get_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



