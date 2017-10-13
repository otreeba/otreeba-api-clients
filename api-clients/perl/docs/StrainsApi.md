# WWW::SwaggerClient::StrainsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StrainsApi;
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_strain_by_ocpc**](StrainsApi.md#get_strain_by_ocpc) | **GET** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
[**get_strains**](StrainsApi.md#get_strains) | **GET** /strains | Get a list of all current strains.


# **get_strain_by_ocpc**
> Strain get_strain_by_ocpc(ocpc => $ocpc)

Find strain by Open Cannabis Product Code (OCPC).

Returns a single strain.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StrainsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::StrainsApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the strain to return.

eval { 
    my $result = $api_instance->get_strain_by_ocpc(ocpc => $ocpc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StrainsApi->get_strain_by_ocpc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the strain to return. | 

### Return type

[**Strain**](Strain.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_strains**
> InlineResponse20011 get_strains(page => $page, count => $count, sort => $sort)

Get a list of all current strains.

Returns a paginated list of strains.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StrainsApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::StrainsApi->new();
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_strains(page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StrainsApi->get_strains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

