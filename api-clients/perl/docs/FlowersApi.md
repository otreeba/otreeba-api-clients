# WWW::SwaggerClient::FlowersApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::FlowersApi;
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_flower_by_ocpc**](FlowersApi.md#get_flower_by_ocpc) | **GET** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
[**get_flowers**](FlowersApi.md#get_flowers) | **GET** /flowers | Get a list of all current flowers.


# **get_flower_by_ocpc**
> Flower get_flower_by_ocpc(ocpc => $ocpc)

Find flower by Open Cannabis Product Code (OCPC).

Returns a single flower.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::FlowersApi;

my $api_instance = WWW::SwaggerClient::FlowersApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the flower to return.

eval { 
    my $result = $api_instance->get_flower_by_ocpc(ocpc => $ocpc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FlowersApi->get_flower_by_ocpc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the flower to return. | 

### Return type

[**Flower**](Flower.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_flowers**
> InlineResponse2004 get_flowers(page => $page, count => $count, sort => $sort)

Get a list of all current flowers.

Returns a paginated list of flowers.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::FlowersApi;

my $api_instance = WWW::SwaggerClient::FlowersApi->new();
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_flowers(page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FlowersApi->get_flowers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

