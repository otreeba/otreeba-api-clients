# IO.Swagger.Api.ExtractsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetExtractByOcpc**](ExtractsApi.md#getextractbyocpc) | **GET** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
[**GetExtracts**](ExtractsApi.md#getextracts) | **GET** /extracts | Get a list of all current extracts.


<a name="getextractbyocpc"></a>
# **GetExtractByOcpc**
> Extract GetExtractByOcpc (string ocpc)

Find extract by Open Cannabis Product Code (OCPC).

Returns a single extract.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetExtractByOcpcExample
    {
        public void main()
        {
            
            var apiInstance = new ExtractsApi();
            var ocpc = ocpc_example;  // string | OCPC of the extract to return.

            try
            {
                // Find extract by Open Cannabis Product Code (OCPC).
                Extract result = apiInstance.GetExtractByOcpc(ocpc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ExtractsApi.GetExtractByOcpc: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the extract to return. | 

### Return type

[**Extract**](Extract.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getextracts"></a>
# **GetExtracts**
> InlineResponse2003 GetExtracts (int? page = null, int? count = null, string sort = null)

Get a list of all current extracts.

Returns a paginated list of extracts.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetExtractsExample
    {
        public void main()
        {
            
            var apiInstance = new ExtractsApi();
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current extracts.
                InlineResponse2003 result = apiInstance.GetExtracts(page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ExtractsApi.GetExtracts: " + e.Message );
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

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

