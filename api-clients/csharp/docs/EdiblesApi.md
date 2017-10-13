# IO.Swagger.Api.EdiblesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetEdibleByOcpc**](EdiblesApi.md#getediblebyocpc) | **GET** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
[**GetEdibles**](EdiblesApi.md#getedibles) | **GET** /edibles | Get a list of all current edibles.


<a name="getediblebyocpc"></a>
# **GetEdibleByOcpc**
> Edible GetEdibleByOcpc (string ocpc)

Find edible by Open Cannabis Product Code (OCPC).

Returns a single edible.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetEdibleByOcpcExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.ApiKey.Add("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("X-API-Key", "Bearer");

            var apiInstance = new EdiblesApi();
            var ocpc = ocpc_example;  // string | OCPC of the edible to return.

            try
            {
                // Find edible by Open Cannabis Product Code (OCPC).
                Edible result = apiInstance.GetEdibleByOcpc(ocpc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdiblesApi.GetEdibleByOcpc: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the edible to return. | 

### Return type

[**Edible**](Edible.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getedibles"></a>
# **GetEdibles**
> InlineResponse2002 GetEdibles (int? page = null, int? count = null, string sort = null)

Get a list of all current edibles.

Returns a paginated list of edibles.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetEdiblesExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.ApiKey.Add("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("X-API-Key", "Bearer");

            var apiInstance = new EdiblesApi();
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current edibles.
                InlineResponse2002 result = apiInstance.GetEdibles(page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling EdiblesApi.GetEdibles: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int?**| Page to be returned. | [optional] 
 **count** | **int?**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

