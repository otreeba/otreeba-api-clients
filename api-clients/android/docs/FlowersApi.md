# FlowersApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFlowerByOcpc**](FlowersApi.md#getFlowerByOcpc) | **GET** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
[**getFlowers**](FlowersApi.md#getFlowers) | **GET** /flowers | Get a list of all current flowers.


<a name="getFlowerByOcpc"></a>
# **getFlowerByOcpc**
> Flower getFlowerByOcpc(ocpc)

Find flower by Open Cannabis Product Code (OCPC).

Returns a single flower.

### Example
```java
// Import classes:
//import io.swagger.client.api.FlowersApi;

FlowersApi apiInstance = new FlowersApi();
String ocpc = "ocpc_example"; // String | OCPC of the flower to return.
try {
    Flower result = apiInstance.getFlowerByOcpc(ocpc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FlowersApi#getFlowerByOcpc");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the flower to return. |

### Return type

[**Flower**](Flower.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getFlowers"></a>
# **getFlowers**
> InlineResponse2004 getFlowers(page, count, sort)

Get a list of all current flowers.

Returns a paginated list of flowers.

### Example
```java
// Import classes:
//import io.swagger.client.api.FlowersApi;

FlowersApi apiInstance = new FlowersApi();
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse2004 result = apiInstance.getFlowers(page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FlowersApi#getFlowers");
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

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

