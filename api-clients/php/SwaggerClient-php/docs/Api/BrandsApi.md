# Swagger\Client\BrandsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBrandByOcpc**](BrandsApi.md#getBrandByOcpc) | **GET** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
[**getBrandEdibles**](BrandsApi.md#getBrandEdibles) | **GET** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
[**getBrandExtracts**](BrandsApi.md#getBrandExtracts) | **GET** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
[**getBrandFlowers**](BrandsApi.md#getBrandFlowers) | **GET** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
[**getBrandProducts**](BrandsApi.md#getBrandProducts) | **GET** /brands/{ocpc}/products | Get a list of all current products for the given brand.
[**getBrands**](BrandsApi.md#getBrands) | **GET** /brands | Get a list of all current brands.


# **getBrandByOcpc**
> \Swagger\Client\Model\Brand getBrandByOcpc($ocpc)

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BrandsApi();
$ocpc = "ocpc_example"; // string | OCPC of the brand to return.

try {
    $result = $api_instance->getBrandByOcpc($ocpc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->getBrandByOcpc: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to return. |

### Return type

[**\Swagger\Client\Model\Brand**](../Model/Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBrandEdibles**
> \Swagger\Client\Model\InlineResponse2008 getBrandEdibles($ocpc, $page, $count, $sort)

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BrandsApi();
$ocpc = "ocpc_example"; // string | OCPC of the brand to list edibles for.
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getBrandEdibles($ocpc, $page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->getBrandEdibles: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list edibles for. |
 **page** | **int**| Page to be returned. | [optional]
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**\Swagger\Client\Model\InlineResponse2008**](../Model/InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBrandExtracts**
> \Swagger\Client\Model\InlineResponse2007 getBrandExtracts($ocpc, $page, $count, $sort)

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BrandsApi();
$ocpc = "ocpc_example"; // string | OCPC of the brand to list extracts for.
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getBrandExtracts($ocpc, $page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->getBrandExtracts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list extracts for. |
 **page** | **int**| Page to be returned. | [optional]
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**\Swagger\Client\Model\InlineResponse2007**](../Model/InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBrandFlowers**
> \Swagger\Client\Model\InlineResponse2006 getBrandFlowers($ocpc, $page, $count, $sort)

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BrandsApi();
$ocpc = "ocpc_example"; // string | OCPC of the brand to list flowers for.
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getBrandFlowers($ocpc, $page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->getBrandFlowers: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list flowers for. |
 **page** | **int**| Page to be returned. | [optional]
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**\Swagger\Client\Model\InlineResponse2006**](../Model/InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBrandProducts**
> \Swagger\Client\Model\InlineResponse2009 getBrandProducts($ocpc, $page, $count, $sort)

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BrandsApi();
$ocpc = "ocpc_example"; // string | OCPC of the brand to list products for.
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getBrandProducts($ocpc, $page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->getBrandProducts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list products for. |
 **page** | **int**| Page to be returned. | [optional]
 **count** | **int**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**\Swagger\Client\Model\InlineResponse2009**](../Model/InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getBrands**
> \Swagger\Client\Model\InlineResponse2005 getBrands($page, $count, $sort)

Get a list of all current brands.

Returns a paginated list of brands.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BrandsApi();
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getBrands($page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->getBrands: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\InlineResponse2005**](../Model/InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

