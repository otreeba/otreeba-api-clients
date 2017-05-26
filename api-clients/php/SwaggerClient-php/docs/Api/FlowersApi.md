# Swagger\Client\FlowersApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFlowerByOcpc**](FlowersApi.md#getFlowerByOcpc) | **GET** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
[**getFlowers**](FlowersApi.md#getFlowers) | **GET** /flowers | Get a list of all current flowers.


# **getFlowerByOcpc**
> \Swagger\Client\Model\Flower getFlowerByOcpc($ocpc)

Find flower by Open Cannabis Product Code (OCPC).

Returns a single flower.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\FlowersApi();
$ocpc = "ocpc_example"; // string | OCPC of the flower to return.

try {
    $result = $api_instance->getFlowerByOcpc($ocpc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FlowersApi->getFlowerByOcpc: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the flower to return. |

### Return type

[**\Swagger\Client\Model\Flower**](../Model/Flower.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getFlowers**
> \Swagger\Client\Model\InlineResponse2004 getFlowers($page, $count, $sort)

Get a list of all current flowers.

Returns a paginated list of flowers.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\FlowersApi();
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getFlowers($page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FlowersApi->getFlowers: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\InlineResponse2004**](../Model/InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

