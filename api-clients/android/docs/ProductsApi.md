# ProductsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProductByOcpc**](ProductsApi.md#getProductByOcpc) | **GET** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
[**getProducts**](ProductsApi.md#getProducts) | **GET** /products | Get a list of all current products.


<a name="getProductByOcpc"></a>
# **getProductByOcpc**
> Product getProductByOcpc(ocpc)

Find product by Open Cannabis Product Code (OCPC).

Returns a single product.

### Example
```java
// Import classes:
//import io.swagger.client.api.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
String ocpc = "ocpc_example"; // String | OCPC of the product to return.
try {
    Product result = apiInstance.getProductByOcpc(ocpc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#getProductByOcpc");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the product to return. |

### Return type

[**Product**](Product.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getProducts"></a>
# **getProducts**
> InlineResponse20010 getProducts(page, count, sort)

Get a list of all current products.

Returns a paginated list of products.

### Example
```java
// Import classes:
//import io.swagger.client.api.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse20010 result = apiInstance.getProducts(page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#getProducts");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional]
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt] [enum: -createdAt, createdAt, -updatedAt, updatedAt, -name, name]

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

