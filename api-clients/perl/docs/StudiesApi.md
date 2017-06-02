# WWW::SwaggerClient::StudiesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StudiesApi;
```

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_studies**](StudiesApi.md#get_studies) | **GET** /studies | Get a list of all current studies.
[**get_studies_by_condition**](StudiesApi.md#get_studies_by_condition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**get_studies_conditions**](StudiesApi.md#get_studies_conditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
[**get_study_by_identifier**](StudiesApi.md#get_study_by_identifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


# **get_studies**
> InlineResponse20012 get_studies(page => $page, count => $count, sort => $sort)

Get a list of all current studies.

Returns a paginated list of studies.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StudiesApi;

my $api_instance = WWW::SwaggerClient::StudiesApi->new();
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_studies(page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudiesApi->get_studies: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_studies_by_condition**
> InlineResponse20013 get_studies_by_condition(condition_slug => $condition_slug, page => $page, count => $count, sort => $sort)

Get a list of all current studies for a given condition.

Returns a paginated list of studies.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StudiesApi;

my $api_instance = WWW::SwaggerClient::StudiesApi->new();
my $condition_slug = 'condition_slug_example'; # string | Slug of the condition to return studies for.
my $page = 56; # int | Page to be returned.
my $count = 56; # int | The number of items to return. Default 10. Max 50.
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_studies_by_condition(condition_slug => $condition_slug, page => $page, count => $count, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudiesApi->get_studies_by_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **condition_slug** | **string**| Slug of the condition to return studies for. | 
 **page** | **int**| Page to be returned. | [optional] 
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -year]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_studies_conditions**
> object get_studies_conditions(sort => $sort)

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StudiesApi;

my $api_instance = WWW::SwaggerClient::StudiesApi->new();
my $sort = 'sort_example'; # string | How to sort the items.

eval { 
    my $result = $api_instance->get_studies_conditions(sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudiesApi->get_studies_conditions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **string**| How to sort the items. | [optional] [default to name]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_study_by_identifier**
> Study get_study_by_identifier(identifier_type => $identifier_type, identifier => $identifier)

Find study by DOI, PubMed ID, or slug.

Returns a single study.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StudiesApi;

my $api_instance = WWW::SwaggerClient::StudiesApi->new();
my $identifier_type = 'identifier_type_example'; # string | Type of identifier to for the study to return.
my $identifier = 'identifier_example'; # string | Identifier for the study to return.

eval { 
    my $result = $api_instance->get_study_by_identifier(identifier_type => $identifier_type, identifier => $identifier);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StudiesApi->get_study_by_identifier: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier_type** | **string**| Type of identifier to for the study to return. | 
 **identifier** | **string**| Identifier for the study to return. | 

### Return type

[**Study**](Study.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

