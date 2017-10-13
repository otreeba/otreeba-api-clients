# StudiesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStudies**](StudiesApi.md#getStudies) | **GET** /studies | Get a list of all current studies.
[**getStudiesByCondition**](StudiesApi.md#getStudiesByCondition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**getStudiesConditions**](StudiesApi.md#getStudiesConditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
[**getStudyByIdentifier**](StudiesApi.md#getStudyByIdentifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


<a name="getStudies"></a>
# **getStudies**
> InlineResponse20012 getStudies(page, count, sort)

Get a list of all current studies.

Returns a paginated list of studies.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.StudiesApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

StudiesApi apiInstance = new StudiesApi();
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse20012 result = apiInstance.getStudies(page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudiesApi#getStudies");
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

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStudiesByCondition"></a>
# **getStudiesByCondition**
> InlineResponse20013 getStudiesByCondition(conditionSlug, page, count, sort)

Get a list of all current studies for a given condition.

Returns a paginated list of studies.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.StudiesApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

StudiesApi apiInstance = new StudiesApi();
String conditionSlug = "conditionSlug_example"; // String | Slug of the condition to return studies for.
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-year"; // String | How to sort the items.
try {
    InlineResponse20013 result = apiInstance.getStudiesByCondition(conditionSlug, page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudiesApi#getStudiesByCondition");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditionSlug** | **String**| Slug of the condition to return studies for. |
 **page** | **Integer**| Page to be returned. | [optional]
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -year] [enum: -year, year, -createdAt, createdAt, -updatedAt, updatedAt]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStudiesConditions"></a>
# **getStudiesConditions**
> Object getStudiesConditions(sort)

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.StudiesApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

StudiesApi apiInstance = new StudiesApi();
String sort = "name"; // String | How to sort the items.
try {
    Object result = apiInstance.getStudiesConditions(sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudiesApi#getStudiesConditions");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| How to sort the items. | [optional] [default to name] [enum: -createdAt, createdAt, -updatedAt, updatedAt, -name, name]

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStudyByIdentifier"></a>
# **getStudyByIdentifier**
> Study getStudyByIdentifier(identifierType, identifier)

Find study by DOI, PubMed ID, or slug.

Returns a single study.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.StudiesApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

StudiesApi apiInstance = new StudiesApi();
String identifierType = "identifierType_example"; // String | Type of identifier to for the study to return.
String identifier = "identifier_example"; // String | Identifier for the study to return.
try {
    Study result = apiInstance.getStudyByIdentifier(identifierType, identifier);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudiesApi#getStudyByIdentifier");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierType** | **String**| Type of identifier to for the study to return. | [enum: doi, pubMedId, slug]
 **identifier** | **String**| Identifier for the study to return. |

### Return type

[**Study**](Study.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

