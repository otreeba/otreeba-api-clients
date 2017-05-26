# Swagger\Client\ProductsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProductByOcpc**](ProductsApi.md#getProductByOcpc) | **GET** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
[**getProducts**](ProductsApi.md#getProducts) | **GET** /products | Get a list of all current products.


# **getProductByOcpc**
> \Swagger\Client\Model\Product getProductByOcpc($ocpc)

Find product by Open Cannabis Product Code (OCPC).

Returns a single product.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ProductsApi();
$ocpc = "ocpc_example"; // string | OCPC of the product to return.

try {
    $result = $api_instance->getProductByOcpc($ocpc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->getProductByOcpc: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the product to return. |

### Return type

[**\Swagger\Client\Model\Product**](../Model/Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getProducts**
> \Swagger\Client\Model\InlineResponse20010 getProducts($page, $count, $sort)

Get a list of all current products.

Returns a paginated list of products.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\ProductsApi();
$page = 56; // int | Page to be returned.
$count = 10; // int | The number of items to return. Default 10. Max 50.
$sort = "-createdAt"; // string | How to sort the items.

try {
    $result = $api_instance->getProducts($page, $count, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->getProducts: ', $e->getMessage(), PHP_EOL;
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

[**\Swagger\Client\Model\InlineResponse20010**](../Model/InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

