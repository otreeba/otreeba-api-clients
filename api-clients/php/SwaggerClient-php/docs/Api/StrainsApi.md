# Swagger\Client\StrainsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStrainByOcpc**](StrainsApi.md#getStrainByOcpc) | **GET** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
[**getStrains**](StrainsApi.md#getStrains) | **GET** /strains | Get a list of all current strains.


# **getStrainByOcpc**
> \Swagger\Client\Model\Strain getStrainByOcpc($ocpc)

Find strain by Open Cannabis Product Code (OCPC).

Returns a single strain.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\StrainsApi();
$ocpc = "ocpc_example"; // string | OCPC of the strain to return.

try {
    $result = $api_instance->getStrainByOcpc($ocpc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StrainsApi->getStrainByOcpc: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the strain to return. |

### Return type

[**\Swagger\Client\Model\Strain**](../Model/Strain.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getStrains**
> \Swagger\Client\Model\InlineResponse20011 getStrains($page, $count, $sort)

Get a list of all current strains.

Returns a paginated list of strains.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\StrainsApi();
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getStrains($page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StrainsApi->getStrains: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\InlineResponse20011**](../Model/InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

