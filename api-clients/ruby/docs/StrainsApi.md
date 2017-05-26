# SwaggerClient::StrainsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_strain_by_ocpc**](StrainsApi.md#get_strain_by_ocpc) | **GET** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
[**get_strains**](StrainsApi.md#get_strains) | **GET** /strains | Get a list of all current strains.


# **get_strain_by_ocpc**
> Strain get_strain_by_ocpc(ocpc)

Find strain by Open Cannabis Product Code (OCPC).

Returns a single strain.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StrainsApi.new

ocpc = "ocpc_example" # String | OCPC of the strain to return.


begin
  #Find strain by Open Cannabis Product Code (OCPC).
  result = api_instance.get_strain_by_ocpc(ocpc)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StrainsApi->get_strain_by_ocpc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the strain to return. | 

### Return type

[**Strain**](Strain.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_strains**
> InlineResponse20011 get_strains(opts)

Get a list of all current strains.

Returns a paginated list of strains.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StrainsApi.new

opts = { 
  page: 56, # Integer | Page to be returned.
  count: 10, # Integer | The number of items to return. Default 10. Max 50.
  sort: "-createdAt" # String | How to sort the items.
}

begin
  #Get a list of all current strains.
  result = api_instance.get_strains(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StrainsApi->get_strains: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional] 
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



