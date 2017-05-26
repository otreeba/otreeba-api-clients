# BrandsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBrandByOcpc**](BrandsApi.md#getBrandByOcpc) | **GET** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
[**getBrandEdibles**](BrandsApi.md#getBrandEdibles) | **GET** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
[**getBrandExtracts**](BrandsApi.md#getBrandExtracts) | **GET** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
[**getBrandFlowers**](BrandsApi.md#getBrandFlowers) | **GET** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
[**getBrandProducts**](BrandsApi.md#getBrandProducts) | **GET** /brands/{ocpc}/products | Get a list of all current products for the given brand.
[**getBrands**](BrandsApi.md#getBrands) | **GET** /brands | Get a list of all current brands.


<a name="getBrandByOcpc"></a>
# **getBrandByOcpc**
> Brand getBrandByOcpc(ocpc)

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.

### Example
```java
// Import classes:
//import io.swagger.client.api.BrandsApi;

BrandsApi apiInstance = new BrandsApi();
String ocpc = "ocpc_example"; // String | OCPC of the brand to return.
try {
    Brand result = apiInstance.getBrandByOcpc(ocpc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BrandsApi#getBrandByOcpc");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to return. |

### Return type

[**Brand**](Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrandEdibles"></a>
# **getBrandEdibles**
> InlineResponse2008 getBrandEdibles(ocpc, page, count, sort)

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.

### Example
```java
// Import classes:
//import io.swagger.client.api.BrandsApi;

BrandsApi apiInstance = new BrandsApi();
String ocpc = "ocpc_example"; // String | OCPC of the brand to list edibles for.
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse2008 result = apiInstance.getBrandEdibles(ocpc, page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BrandsApi#getBrandEdibles");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list edibles for. |
 **page** | **Integer**| Page to be returned. | [optional]
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt] [enum: -createdAt, createdAt, -updatedAt, updatedAt, -name, name]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrandExtracts"></a>
# **getBrandExtracts**
> InlineResponse2007 getBrandExtracts(ocpc, page, count, sort)

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.

### Example
```java
// Import classes:
//import io.swagger.client.api.BrandsApi;

BrandsApi apiInstance = new BrandsApi();
String ocpc = "ocpc_example"; // String | OCPC of the brand to list extracts for.
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse2007 result = apiInstance.getBrandExtracts(ocpc, page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BrandsApi#getBrandExtracts");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list extracts for. |
 **page** | **Integer**| Page to be returned. | [optional]
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt] [enum: -createdAt, createdAt, -updatedAt, updatedAt, -name, name]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrandFlowers"></a>
# **getBrandFlowers**
> InlineResponse2006 getBrandFlowers(ocpc, page, count, sort)

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.

### Example
```java
// Import classes:
//import io.swagger.client.api.BrandsApi;

BrandsApi apiInstance = new BrandsApi();
String ocpc = "ocpc_example"; // String | OCPC of the brand to list flowers for.
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse2006 result = apiInstance.getBrandFlowers(ocpc, page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BrandsApi#getBrandFlowers");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list flowers for. |
 **page** | **Integer**| Page to be returned. | [optional]
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt] [enum: -createdAt, createdAt, -updatedAt, updatedAt, -name, name]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrandProducts"></a>
# **getBrandProducts**
> InlineResponse2009 getBrandProducts(ocpc, page, count, sort)

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example
```java
// Import classes:
//import io.swagger.client.api.BrandsApi;

BrandsApi apiInstance = new BrandsApi();
String ocpc = "ocpc_example"; // String | OCPC of the brand to list products for.
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse2009 result = apiInstance.getBrandProducts(ocpc, page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BrandsApi#getBrandProducts");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the brand to list products for. |
 **page** | **Integer**| Page to be returned. | [optional]
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt] [enum: -createdAt, createdAt, -updatedAt, updatedAt, -name, name]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBrands"></a>
# **getBrands**
> InlineResponse2005 getBrands(page, count, sort)

Get a list of all current brands.

Returns a paginated list of brands.

### Example
```java
// Import classes:
//import io.swagger.client.api.BrandsApi;

BrandsApi apiInstance = new BrandsApi();
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse2005 result = apiInstance.getBrands(page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BrandsApi#getBrands");
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

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

