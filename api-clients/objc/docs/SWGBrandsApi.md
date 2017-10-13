# SWGBrandsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBrandByOcpc**](SWGBrandsApi.md#getbrandbyocpc) | **GET** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
[**getBrandEdibles**](SWGBrandsApi.md#getbrandedibles) | **GET** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
[**getBrandExtracts**](SWGBrandsApi.md#getbrandextracts) | **GET** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
[**getBrandFlowers**](SWGBrandsApi.md#getbrandflowers) | **GET** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
[**getBrandProducts**](SWGBrandsApi.md#getbrandproducts) | **GET** /brands/{ocpc}/products | Get a list of all current products for the given brand.
[**getBrands**](SWGBrandsApi.md#getbrands) | **GET** /brands | Get a list of all current brands.


# **getBrandByOcpc**
```objc
-(NSURLSessionTask*) getBrandByOcpcWithOcpc: (NSString*) ocpc
        completionHandler: (void (^)(SWGBrand* output, NSError* error)) handler;
```

Find brand by Open Cannabis Product Code (OCPC).

Returns a single brand.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-Key"];


NSString* ocpc = @"ocpc_example"; // OCPC of the brand to return.

SWGBrandsApi*apiInstance = [[SWGBrandsApi alloc] init];

// Find brand by Open Cannabis Product Code (OCPC).
[apiInstance getBrandByOcpcWithOcpc:ocpc
          completionHandler: ^(SWGBrand* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBrandsApi->getBrandByOcpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the brand to return. | 

### Return type

[**SWGBrand***](SWGBrand.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandEdibles**
```objc
-(NSURLSessionTask*) getBrandEdiblesWithOcpc: (NSString*) ocpc
    page: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2008* output, NSError* error)) handler;
```

Get a list of all current edibles for the given brand.

Returns a paginated list of edibles.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-Key"];


NSString* ocpc = @"ocpc_example"; // OCPC of the brand to list edibles for.
NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGBrandsApi*apiInstance = [[SWGBrandsApi alloc] init];

// Get a list of all current edibles for the given brand.
[apiInstance getBrandEdiblesWithOcpc:ocpc
              page:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse2008* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBrandsApi->getBrandEdibles: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the brand to list edibles for. | 
 **page** | **NSNumber***| Page to be returned. | [optional] 
 **count** | **NSNumber***| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **NSString***| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**SWGInlineResponse2008***](SWGInlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandExtracts**
```objc
-(NSURLSessionTask*) getBrandExtractsWithOcpc: (NSString*) ocpc
    page: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2007* output, NSError* error)) handler;
```

Get a list of all current extracts for the given brand.

Returns a paginated list of extracts.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-Key"];


NSString* ocpc = @"ocpc_example"; // OCPC of the brand to list extracts for.
NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGBrandsApi*apiInstance = [[SWGBrandsApi alloc] init];

// Get a list of all current extracts for the given brand.
[apiInstance getBrandExtractsWithOcpc:ocpc
              page:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse2007* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBrandsApi->getBrandExtracts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the brand to list extracts for. | 
 **page** | **NSNumber***| Page to be returned. | [optional] 
 **count** | **NSNumber***| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **NSString***| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**SWGInlineResponse2007***](SWGInlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandFlowers**
```objc
-(NSURLSessionTask*) getBrandFlowersWithOcpc: (NSString*) ocpc
    page: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2006* output, NSError* error)) handler;
```

Get a list of all current flowers for the given brand.

Returns a paginated list of flowers.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-Key"];


NSString* ocpc = @"ocpc_example"; // OCPC of the brand to list flowers for.
NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGBrandsApi*apiInstance = [[SWGBrandsApi alloc] init];

// Get a list of all current flowers for the given brand.
[apiInstance getBrandFlowersWithOcpc:ocpc
              page:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse2006* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBrandsApi->getBrandFlowers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the brand to list flowers for. | 
 **page** | **NSNumber***| Page to be returned. | [optional] 
 **count** | **NSNumber***| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **NSString***| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**SWGInlineResponse2006***](SWGInlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandProducts**
```objc
-(NSURLSessionTask*) getBrandProductsWithOcpc: (NSString*) ocpc
    page: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2009* output, NSError* error)) handler;
```

Get a list of all current products for the given brand.

Returns a paginated list of products.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-Key"];


NSString* ocpc = @"ocpc_example"; // OCPC of the brand to list products for.
NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGBrandsApi*apiInstance = [[SWGBrandsApi alloc] init];

// Get a list of all current products for the given brand.
[apiInstance getBrandProductsWithOcpc:ocpc
              page:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse2009* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBrandsApi->getBrandProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the brand to list products for. | 
 **page** | **NSNumber***| Page to be returned. | [optional] 
 **count** | **NSNumber***| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **NSString***| How to sort the items. | [optional] [default to -createdAt]

### Return type

[**SWGInlineResponse2009***](SWGInlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrands**
```objc
-(NSURLSessionTask*) getBrandsWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2005* output, NSError* error)) handler;
```

Get a list of all current brands.

Returns a paginated list of brands.

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

SWGBrandsApi*apiInstance = [[SWGBrandsApi alloc] init];

// Get a list of all current brands.
[apiInstance getBrandsWithPage:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse2005* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBrandsApi->getBrands: %@", error);
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

[**SWGInlineResponse2005***](SWGInlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

