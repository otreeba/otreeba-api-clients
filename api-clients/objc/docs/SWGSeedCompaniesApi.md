# SWGSeedCompaniesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSeedCompanies**](SWGSeedCompaniesApi.md#getseedcompanies) | **GET** /seed-companies | Get a list of all current seed companies.
[**getSeedCompanyByOcpc**](SWGSeedCompaniesApi.md#getseedcompanybyocpc) | **GET** /seed-companies/{ocpc} | Find seed company by Open Cannabis Product Code (OCPC).
[**getSeedCompanyStrainsByOcpc**](SWGSeedCompaniesApi.md#getseedcompanystrainsbyocpc) | **GET** /seed-companies/{ocpc}/strains | Find strains for a seed company by Open Cannabis Product Code (OCPC).


# **getSeedCompanies**
```objc
-(NSURLSessionTask*) getSeedCompaniesWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2001* output, NSError* error)) handler;
```

Get a list of all current seed companies.

Returns a paginated list of seed companies.

### Example 
```objc

NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGSeedCompaniesApi*apiInstance = [[SWGSeedCompaniesApi alloc] init];

// Get a list of all current seed companies.
[apiInstance getSeedCompaniesWithPage:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSeedCompaniesApi->getSeedCompanies: %@", error);
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

[**SWGInlineResponse2001***](SWGInlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeedCompanyByOcpc**
```objc
-(NSURLSessionTask*) getSeedCompanyByOcpcWithOcpc: (NSString*) ocpc
        completionHandler: (void (^)(SWGSeedCompany* output, NSError* error)) handler;
```

Find seed company by Open Cannabis Product Code (OCPC).

Returns a single seed company.

### Example 
```objc

NSString* ocpc = @"ocpc_example"; // OCPC of the seed company to return.

SWGSeedCompaniesApi*apiInstance = [[SWGSeedCompaniesApi alloc] init];

// Find seed company by Open Cannabis Product Code (OCPC).
[apiInstance getSeedCompanyByOcpcWithOcpc:ocpc
          completionHandler: ^(SWGSeedCompany* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSeedCompaniesApi->getSeedCompanyByOcpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the seed company to return. | 

### Return type

[**SWGSeedCompany***](SWGSeedCompany.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeedCompanyStrainsByOcpc**
```objc
-(NSURLSessionTask*) getSeedCompanyStrainsByOcpcWithOcpc: (NSString*) ocpc
    page: (NSNumber*) page
    count: (NSNumber*) count
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```

Find strains for a seed company by Open Cannabis Product Code (OCPC).

Returns a paginated list of strains for a single seed company.

### Example 
```objc

NSString* ocpc = @"ocpc_example"; // OCPC of the seed company to return strains for.
NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)

SWGSeedCompaniesApi*apiInstance = [[SWGSeedCompaniesApi alloc] init];

// Find strains for a seed company by Open Cannabis Product Code (OCPC).
[apiInstance getSeedCompanyStrainsByOcpcWithOcpc:ocpc
              page:page
              count:count
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSeedCompaniesApi->getSeedCompanyStrainsByOcpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the seed company to return strains for. | 
 **page** | **NSNumber***| Page to be returned. | [optional] 
 **count** | **NSNumber***| The number of items to return. Default 10. Max 50. | [optional] [default to 10]

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

