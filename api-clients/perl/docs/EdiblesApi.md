# WWW::SwaggerClient::EdiblesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::EdiblesApi;
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_edible_by_ocpc**](EdiblesApi.md#get_edible_by_ocpc) | **GET** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
[**get_edibles**](EdiblesApi.md#get_edibles) | **GET** /edibles | Get a list of all current edibles.


# **get_edible_by_ocpc**
> Edible get_edible_by_ocpc(ocpc => $ocpc)

Find edible by Open Cannabis Product Code (OCPC).

Returns a single edible.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::EdiblesApi;

my $api_instance = WWW::SwaggerClient::EdiblesApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the edible to return.

eval { 
    my $result = $api_instance->get_edible_by_ocpc(ocpc => $ocpc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdiblesApi->get_edible_by_ocpc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the edible to return. | 

### Return type

[**Edible**](Edible.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_edibles**
> InlineResponse2002 get_edibles(page => $page, count => $count, sort => $sort)

Get a list of all current edibles.

Returns a paginated list of edibles.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::EdiblesApi;

my $api_instance = WWW::SwaggerClient::EdiblesApi->new();
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_edibles(page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EdiblesApi->get_edibles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

