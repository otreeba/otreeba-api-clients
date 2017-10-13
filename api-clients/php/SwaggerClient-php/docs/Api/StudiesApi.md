# Swagger\Client\StudiesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStudies**](StudiesApi.md#getStudies) | **GET** /studies | Get a list of all current studies.
[**getStudiesByCondition**](StudiesApi.md#getStudiesByCondition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**getStudiesConditions**](StudiesApi.md#getStudiesConditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
[**getStudyByIdentifier**](StudiesApi.md#getStudyByIdentifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


# **getStudies**
> \Swagger\Client\Model\InlineResponse20012 getStudies($page, $count, $sort)

Get a list of all current studies.

Returns a paginated list of studies.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

$api_instance = new Swagger\Client\Api\StudiesApi();
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getStudies($page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudiesApi->getStudies: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page to be returned. | [optional]
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**\Swagger\Client\Model\InlineResponse20012**](../Model/InlineResponse20012.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getStudiesByCondition**
> \Swagger\Client\Model\InlineResponse20013 getStudiesByCondition($condition_slug, $page, $count, $sort)

Get a list of all current studies for a given condition.

Returns a paginated list of studies.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

$api_instance = new Swagger\Client\Api\StudiesApi();
$condition_slug = "condition_slug_example"; // string | Slug of the condition to return studies for.
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-year"; // string | How to sort the items.

try {
    $result = $api_instance->getStudiesByCondition($condition_slug, $page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudiesApi->getStudiesByCondition: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **condition_slug** | **string**| Slug of the condition to return studies for. |
 **page** | **int**| Page to be returned. | [optional]
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -year]

### Return type

[**\Swagger\Client\Model\InlineResponse20013**](../Model/InlineResponse20013.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getStudiesConditions**
> object getStudiesConditions($sort)

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

$api_instance = new Swagger\Client\Api\StudiesApi();
$sort = "name"; // string | How to sort the items.

try {
    $result = $api_instance->getStudiesConditions($sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudiesApi->getStudiesConditions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **string**| How to sort the items. | [optional] [default to name]

### Return type

**object**

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getStudyByIdentifier**
> \Swagger\Client\Model\Study getStudyByIdentifier($identifier_type, $identifier)

Find study by DOI, PubMed ID, or slug.

Returns a single study.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

$api_instance = new Swagger\Client\Api\StudiesApi();
$identifier_type = "identifier_type_example"; // string | Type of identifier to for the study to return.
$identifier = "identifier_example"; // string | Identifier for the study to return.

try {
    $result = $api_instance->getStudyByIdentifier($identifier_type, $identifier);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudiesApi->getStudyByIdentifier: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier_type** | **string**| Type of identifier to for the study to return. |
 **identifier** | **string**| Identifier for the study to return. |

### Return type

[**\Swagger\Client\Model\Study**](../Model/Study.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

