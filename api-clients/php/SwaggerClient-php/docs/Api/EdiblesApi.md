# Swagger\Client\EdiblesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEdibleByOcpc**](EdiblesApi.md#getEdibleByOcpc) | **GET** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
[**getEdibles**](EdiblesApi.md#getEdibles) | **GET** /edibles | Get a list of all current edibles.


# **getEdibleByOcpc**
> \Swagger\Client\Model\Edible getEdibleByOcpc($ocpc)

Find edible by Open Cannabis Product Code (OCPC).

Returns a single edible.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

$api_instance = new Swagger\Client\Api\EdiblesApi();
$ocpc = "ocpc_example"; // string | OCPC of the edible to return.

try {
    $result = $api_instance->getEdibleByOcpc($ocpc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdiblesApi->getEdibleByOcpc: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the edible to return. |

### Return type

[**\Swagger\Client\Model\Edible**](../Model/Edible.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getEdibles**
> \Swagger\Client\Model\InlineResponse2002 getEdibles($page, $count, $sort)

Get a list of all current edibles.

Returns a paginated list of edibles.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

$api_instance = new Swagger\Client\Api\EdiblesApi();
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getEdibles($page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EdiblesApi->getEdibles: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\InlineResponse2002**](../Model/InlineResponse2002.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

