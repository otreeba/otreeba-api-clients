# SwaggerClient::FlowersApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_flower_by_ocpc**](FlowersApi.md#get_flower_by_ocpc) | **GET** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
[**get_flowers**](FlowersApi.md#get_flowers) | **GET** /flowers | Get a list of all current flowers.


# **get_flower_by_ocpc**
> Flower get_flower_by_ocpc(ocpc)

Find flower by Open Cannabis Product Code (OCPC).

Returns a single flower.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FlowersApi.new

ocpc = "ocpc_example" # String | OCPC of the flower to return.


begin
  #Find flower by Open Cannabis Product Code (OCPC).
  result = api_instance.get_flower_by_ocpc(ocpc)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlowersApi->get_flower_by_ocpc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the flower to return. | 

### Return type

[**Flower**](Flower.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_flowers**
> InlineResponse2004 get_flowers(opts)

Get a list of all current flowers.

Returns a paginated list of flowers.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FlowersApi.new

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current flowers.
  result = api_instance.get_flowers(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlowersApi->get_flowers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



