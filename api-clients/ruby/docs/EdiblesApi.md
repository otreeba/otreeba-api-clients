# SwaggerClient::EdiblesApi

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
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdiblesApi.new

ocpc = "ocpc_example" # String | OCPC of the edible to return.


begin
  #Find edible by Open Cannabis Product Code (OCPC).
  result = api_instance.get_edible_by_ocpc(ocpc)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdiblesApi->get_edible_by_ocpc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the edible to return. | 

### Return type

[**Edible**](Edible.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_edibles**
> InlineResponse2002 get_edibles(opts)

Get a list of all current edibles.

Returns a paginated list of edibles.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EdiblesApi.new

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current edibles.
  result = api_instance.get_edibles(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EdiblesApi->get_edibles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



