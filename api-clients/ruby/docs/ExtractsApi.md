# SwaggerClient::ExtractsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_extract_by_ocpc**](ExtractsApi.md#get_extract_by_ocpc) | **GET** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
[**get_extracts**](ExtractsApi.md#get_extracts) | **GET** /extracts | Get a list of all current extracts.


# **get_extract_by_ocpc**
> Extract get_extract_by_ocpc(ocpc)

Find extract by Open Cannabis Product Code (OCPC).

Returns a single extract.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExtractsApi.new

ocpc = "ocpc_example" # String | OCPC of the extract to return.


begin
  #Find extract by Open Cannabis Product Code (OCPC).
  result = api_instance.get_extract_by_ocpc(ocpc)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExtractsApi->get_extract_by_ocpc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the extract to return. | 

### Return type

[**Extract**](Extract.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_extracts**
> InlineResponse2003 get_extracts(opts)

Get a list of all current extracts.

Returns a paginated list of extracts.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExtractsApi.new

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current extracts.
  result = api_instance.get_extracts(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExtractsApi->get_extracts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



