# WWW::SwaggerClient::ProductsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ProductsApi;
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_product_by_ocpc**](ProductsApi.md#get_product_by_ocpc) | **GET** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
[**get_products**](ProductsApi.md#get_products) | **GET** /products | Get a list of all current products.


# **get_product_by_ocpc**
> Product get_product_by_ocpc(ocpc => $ocpc)

Find product by Open Cannabis Product Code (OCPC).

Returns a single product.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ProductsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::ProductsApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the product to return.

eval { 
    my $result = $api_instance->get_product_by_ocpc(ocpc => $ocpc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->get_product_by_ocpc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the product to return. | 

### Return type

[**Product**](Product.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_products**
> InlineResponse20010 get_products(page => $page, count => $count, sort => $sort)

Get a list of all current products.

Returns a paginated list of products.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ProductsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::ProductsApi->new();
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_products(page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->get_products: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

