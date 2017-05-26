# IO.Swagger..FlowersApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetFlowerByOcpc**](FlowersApi.md#getflowerbyocpc) | **GET** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
[**GetFlowers**](FlowersApi.md#getflowers) | **GET** /flowers | Get a list of all current flowers.


<a name="getflowerbyocpc"></a>
# **GetFlowerByOcpc**
> Flower GetFlowerByOcpc (string ocpc)

Find flower by Open Cannabis Product Code (OCPC).

Returns a single flower.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetFlowerByOcpcExample
    {
        public void main()
        {
            
            var apiInstance = new FlowersApi();
            var ocpc = ocpc_example;  // string | OCPC of the flower to return.

            try
            {
                // Find flower by Open Cannabis Product Code (OCPC).
                Flower result = apiInstance.GetFlowerByOcpc(ocpc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FlowersApi.GetFlowerByOcpc: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the flower to return. | 

### Return type

[**Flower**](Flower.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getflowers"></a>
# **GetFlowers**
> InlineResponse2004 GetFlowers (int? page, int? count, string sort)

Get a list of all current flowers.

Returns a paginated list of flowers.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetFlowersExample
    {
        public void main()
        {
            
            var apiInstance = new FlowersApi();
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current flowers.
                InlineResponse2004 result = apiInstance.GetFlowers(page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling FlowersApi.GetFlowers: " + e.Message );
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

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

