# SWGProductsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProductByOcpc**](SWGProductsApi.md#getproductbyocpc) | **GET** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
[**getProducts**](SWGProductsApi.md#getproducts) | **GET** /products | Get a list of all current products.


# **getProductByOcpc**
```objc
-(NSURLSessionTask*) getProductByOcpcWithOcpc: (NSString*) ocpc
        completionHandler: (void (^)(SWGProduct* output, NSError* error)) handler;
```

Find product by Open Cannabis Product Code (OCPC).

Returns a single product.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-Key"];


NSString* ocpc = @"ocpc_example"; // OCPC of the product to return.

SWGProductsApi*apiInstance = [[SWGProductsApi alloc] init];

// Find product by Open Cannabis Product Code (OCPC).
[apiInstance getProductByOcpcWithOcpc:ocpc
          completionHandler: ^(SWGProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGProductsApi->getProductByOcpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the product to return. | 

### Return type

[**SWGProduct***](SWGProduct.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProducts**
```objc
-(NSURLSessionTask*) getProductsWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse20010* output, NSError* error)) handler;
```

Get a list of all current products.

Returns a paginated list of products.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-Key"];


NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGProductsApi*apiInstance = [[SWGProductsApi alloc] init];

// Get a list of all current products.
[apiInstance getProductsWithPage:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse20010* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGProductsApi->getProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Page to be returned. | [optional] 
 **count** | **NSNumber***| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **NSString***| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**SWGInlineResponse20010***](SWGInlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

