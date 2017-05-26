# IO.Swagger.Api.ProductsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetProductByOcpc**](ProductsApi.md#getproductbyocpc) | **GET** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
[**GetProducts**](ProductsApi.md#getproducts) | **GET** /products | Get a list of all current products.


<a name="getproductbyocpc"></a>
# **GetProductByOcpc**
> Product GetProductByOcpc (string ocpc)

Find product by Open Cannabis Product Code (OCPC).

Returns a single product.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetProductByOcpcExample
    {
        public void main()
        {
            
            var apiInstance = new ProductsApi();
            var ocpc = ocpc_example;  // string | OCPC of the product to return.

            try
            {
                // Find product by Open Cannabis Product Code (OCPC).
                Product result = apiInstance.GetProductByOcpc(ocpc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.GetProductByOcpc: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **string**| OCPC of the product to return. | 

### Return type

[**Product**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getproducts"></a>
# **GetProducts**
> InlineResponse20010 GetProducts (int? page = null, int? count = null, string sort = null)

Get a list of all current products.

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
    public class GetProductsExample
    {
        public void main()
        {
            
            var apiInstance = new ProductsApi();
            var page = 56;  // int? | Page to be returned. (optional) 
            var count = 56;  // int? | The number of items to return. Default 10. Max 50. (optional)  (default to 10)
            var sort = sort_example;  // string | How to sort the items. (optional)  (default to -createdAt)

            try
            {
                // Get a list of all current products.
                InlineResponse20010 result = apiInstance.GetProducts(page, count, sort);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.GetProducts: " + e.Message );
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

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

