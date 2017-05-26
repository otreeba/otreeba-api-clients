# WWW::SwaggerClient::ExtractsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ExtractsApi;
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_extract_by_ocpc**](ExtractsApi.md#get_extract_by_ocpc) | **GET** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
[**get_extracts**](ExtractsApi.md#get_extracts) | **GET** /extracts | Get a list of all current extracts.


# **get_extract_by_ocpc**
> Extract get_extract_by_ocpc(ocpc => $ocpc)

Find extract by Open Cannabis Product Code (OCPC).

Returns a single extract.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ExtractsApi;

my $api_instance = WWW::SwaggerClient::ExtractsApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the extract to return.

eval { 
    my $result = $api_instance->get_extract_by_ocpc(ocpc => $ocpc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExtractsApi->get_extract_by_ocpc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the extract to return. | 

### Return type

[**Extract**](Extract.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_extracts**
> InlineResponse2003 get_extracts(page => $page, count => $count, sort => $sort)

Get a list of all current extracts.

Returns a paginated list of extracts.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ExtractsApi;

my $api_instance = WWW::SwaggerClient::ExtractsApi->new();
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_extracts(page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExtractsApi->get_extracts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

