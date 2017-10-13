# WWW::SwaggerClient::SeedCompaniesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::SeedCompaniesApi;
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_seed_companies**](SeedCompaniesApi.md#get_seed_companies) | **GET** /seed-companies | Get a list of all current seed companies.
[**get_seed_company_by_ocpc**](SeedCompaniesApi.md#get_seed_company_by_ocpc) | **GET** /seed-companies/{ocpc} | Find seed company by Open Cannabis Product Code (OCPC).
[**get_seed_company_strains_by_ocpc**](SeedCompaniesApi.md#get_seed_company_strains_by_ocpc) | **GET** /seed-companies/{ocpc}/strains | Find strains for a seed company by Open Cannabis Product Code (OCPC).


# **get_seed_companies**
> InlineResponse200 get_seed_companies(page => $page, count => $count, sort => $sort)

Get a list of all current seed companies.

Returns a paginated list of seed companies.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SeedCompaniesApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::SeedCompaniesApi->new();
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_seed_companies(page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SeedCompaniesApi->get_seed_companies: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_seed_company_by_ocpc**
> SeedCompany get_seed_company_by_ocpc(ocpc => $ocpc)

Find seed company by Open Cannabis Product Code (OCPC).

Returns a single seed company.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SeedCompaniesApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::SeedCompaniesApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the seed company to return.

eval { 
    my $result = $api_instance->get_seed_company_by_ocpc(ocpc => $ocpc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SeedCompaniesApi->get_seed_company_by_ocpc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the seed company to return. | 

### Return type

[**SeedCompany**](SeedCompany.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_seed_company_strains_by_ocpc**
> InlineResponse2001 get_seed_company_strains_by_ocpc(ocpc => $ocpc, page => $page, count => $count)

Find strains for a seed company by Open Cannabis Product Code (OCPC).

Returns a paginated list of strains for a single seed company.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SeedCompaniesApi;

# Configure API key authorization: api_key
$WWW::SwaggerClient::Configuration::api_key->{'X-API-Key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$WWW::SwaggerClient::Configuration::api_key_prefix->{'X-API-Key'} = "Bearer";

my $api_instance = WWW::SwaggerClient::SeedCompaniesApi->new();
my $ocpc = 'ocpc_example'; # string | OCPC of the seed company to return strains for.
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.

eval { 
    my $result = $api_instance->get_seed_company_strains_by_ocpc(ocpc => $ocpc, page => $page, count => $count);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SeedCompaniesApi->get_seed_company_strains_by_ocpc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the seed company to return strains for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

