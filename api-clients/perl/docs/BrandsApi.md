# WWW::SwaggerClient::BrandsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BrandsApi;
```

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
> Brand get_brand_by_ocpc(ocpc => $ocpc)

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BrandsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::BrandsApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the brand to return.

eval { 
    my $result = $api_instance->get_brand_by_ocpc(ocpc => $ocpc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BrandsApi->get_brand_by_ocpc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to return. | 

### Return type

[**Brand**](Brand.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brand_edibles**
> InlineResponse2008 get_brand_edibles(ocpc => $ocpc, page => $page, count => $count, sort => $sort)

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BrandsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::BrandsApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the brand to list edibles for.
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_brand_edibles(ocpc => $ocpc, page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BrandsApi->get_brand_edibles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list edibles for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brand_extracts**
> InlineResponse2007 get_brand_extracts(ocpc => $ocpc, page => $page, count => $count, sort => $sort)

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BrandsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::BrandsApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the brand to list extracts for.
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_brand_extracts(ocpc => $ocpc, page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BrandsApi->get_brand_extracts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list extracts for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brand_flowers**
> InlineResponse2006 get_brand_flowers(ocpc => $ocpc, page => $page, count => $count, sort => $sort)

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BrandsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::BrandsApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the brand to list flowers for.
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_brand_flowers(ocpc => $ocpc, page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BrandsApi->get_brand_flowers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list flowers for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brand_products**
> InlineResponse2009 get_brand_products(ocpc => $ocpc, page => $page, count => $count, sort => $sort)

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BrandsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::BrandsApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the brand to list products for.
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_brand_products(ocpc => $ocpc, page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BrandsApi->get_brand_products: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list products for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_brands**
> InlineResponse2005 get_brands(page => $page, count => $count, sort => $sort)

Get a list of all current brands.

Returns a paginated list of brands.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BrandsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::BrandsApi->new();
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_brands(page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BrandsApi->get_brands: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

