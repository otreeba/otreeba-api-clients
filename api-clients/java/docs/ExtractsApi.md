# ExtractsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExtractByOcpc**](ExtractsApi.md#getExtractByOcpc) | **GET** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
[**getExtracts**](ExtractsApi.md#getExtracts) | **GET** /extracts | Get a list of all current extracts.


<a name="getExtractByOcpc"></a>
# **getExtractByOcpc**
> Extract getExtractByOcpc(ocpc)

Find extract by Open Cannabis Product Code (OCPC).

Returns a single extract.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ExtractsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ExtractsApi apiInstance = new ExtractsApi();
String ocpc = "ocpc_example"; // String | OCPC of the extract to return.
try {
    Extract result = apiInstance.getExtractByOcpc(ocpc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExtractsApi#getExtractByOcpc");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the extract to return. |

### Return type

[**Extract**](Extract.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getExtracts"></a>
# **getExtracts**
> InlineResponse2003 getExtracts(page, count, sort)

Get a list of all current extracts.

Returns a paginated list of extracts.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ExtractsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ExtractsApi apiInstance = new ExtractsApi();
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse2003 result = apiInstance.getExtracts(page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExtractsApi#getExtracts");
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

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

