# IO.Swagger.Api.BrandsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBrandByOcpc**](BrandsApi.md#getbrandbyocpc) | **GET** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
[**GetBrandEdibles**](BrandsApi.md#getbrandedibles) | **GET** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
[**GetBrandExtracts**](BrandsApi.md#getbrandextracts) | **GET** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
[**GetBrandFlowers**](BrandsApi.md#getbrandflowers) | **GET** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
[**GetBrandProducts**](BrandsApi.md#getbrandproducts) | **GET** /brands/{ocpc}/products | Get a list of all current products for the given brand.
[**GetBrands**](BrandsApi.md#getbrands) | **GET** /brands | Get a list of all current brands.


<a name="getbrandbyocpc"></a>
# **GetBrandByOcpc**
> Brand GetBrandByOcpc (string ocpc)

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetBrandByOcpcExample
    {
        public void main()
        {
            
            var apiInstance = new BrandsApi();
            var ocpc = ocpc_example;  // string | OCPC of the brand to return.

            try
            {
                // Find brand by Open Cannabis Product Code (OCPC).
                Brand result = apiInstance.GetBrandByOcpc(ocpc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BrandsApi.GetBrandByOcpc: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to return. | 

### Return type

[**Brand**](Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getbrandedibles"></a>
# **GetBrandEdibles**
> InlineResponse2008 GetBrandEdibles (string ocpc, int? page = null, int? count = null, string sort = null)

Get a list of all current edibles for the given brand.

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
    public class GetBrandEdiblesExample
    {
        public void main()
        {
            
            var apiInstance = new BrandsApi();
            var ocpc = ocpc_example;  // string | OCPC of the brand to list edibles for.
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current edibles for the given brand.
                InlineResponse2008 result = apiInstance.GetBrandEdibles(ocpc, page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BrandsApi.GetBrandEdibles: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list edibles for. | 
 **page** | **int?**| Page to be returned. | [optional] 
 **count** | **int?**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getbrandextracts"></a>
# **GetBrandExtracts**
> InlineResponse2007 GetBrandExtracts (string ocpc, int? page = null, int? count = null, string sort = null)

Get a list of all current extracts for the given brand.

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
    public class GetBrandExtractsExample
    {
        public void main()
        {
            
            var apiInstance = new BrandsApi();
            var ocpc = ocpc_example;  // string | OCPC of the brand to list extracts for.
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current extracts for the given brand.
                InlineResponse2007 result = apiInstance.GetBrandExtracts(ocpc, page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BrandsApi.GetBrandExtracts: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list extracts for. | 
 **page** | **int?**| Page to be returned. | [optional] 
 **count** | **int?**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getbrandflowers"></a>
# **GetBrandFlowers**
> InlineResponse2006 GetBrandFlowers (string ocpc, int? page = null, int? count = null, string sort = null)

Get a list of all current flowers for the given brand.

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
    public class GetBrandFlowersExample
    {
        public void main()
        {
            
            var apiInstance = new BrandsApi();
            var ocpc = ocpc_example;  // string | OCPC of the brand to list flowers for.
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current flowers for the given brand.
                InlineResponse2006 result = apiInstance.GetBrandFlowers(ocpc, page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BrandsApi.GetBrandFlowers: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list flowers for. | 
 **page** | **int?**| Page to be returned. | [optional] 
 **count** | **int?**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getbrandproducts"></a>
# **GetBrandProducts**
> InlineResponse2009 GetBrandProducts (string ocpc, int? page = null, int? count = null, string sort = null)

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetBrandProductsExample
    {
        public void main()
        {
            
            var apiInstance = new BrandsApi();
            var ocpc = ocpc_example;  // string | OCPC of the brand to list products for.
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current products for the given brand.
                InlineResponse2009 result = apiInstance.GetBrandProducts(ocpc, page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BrandsApi.GetBrandProducts: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the brand to list products for. | 
 **page** | **int?**| Page to be returned. | [optional] 
 **count** | **int?**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **string**| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getbrands"></a>
# **GetBrands**
> InlineResponse2005 GetBrands (int? page = null, int? count = null, string sort = null)

Get a list of all current brands.

Returns a paginated list of brands.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetBrandsExample
    {
        public void main()
        {
            
            var apiInstance = new BrandsApi();
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current brands.
                InlineResponse2005 result = apiInstance.GetBrands(page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BrandsApi.GetBrands: " + e.Message );
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

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

