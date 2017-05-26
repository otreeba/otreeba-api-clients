# SWGStrainsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStrainByOcpc**](SWGStrainsApi.md#getstrainbyocpc) | **GET** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
[**getStrains**](SWGStrainsApi.md#getstrains) | **GET** /strains | Get a list of all current strains.


# **getStrainByOcpc**
```objc
-(NSURLSessionTask*) getStrainByOcpcWithOcpc: (NSString*) ocpc
        completionHandler: (void (^)(SWGStrain* output, NSError* error)) handler;
```

Find strain by Open Cannabis Product Code (OCPC).

Returns a single strain.

### Example 
```objc

NSString* ocpc = @"ocpc_example"; // OCPC of the strain to return.

SWGStrainsApi*apiInstance = [[SWGStrainsApi alloc] init];

// Find strain by Open Cannabis Product Code (OCPC).
[apiInstance getStrainByOcpcWithOcpc:ocpc
          completionHandler: ^(SWGStrain* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStrainsApi->getStrainByOcpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the strain to return. | 

### Return type

[**SWGStrain***](SWGStrain.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStrains**
```objc
-(NSURLSessionTask*) getStrainsWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse20011* output, NSError* error)) handler;
```

Get a list of all current strains.

Returns a paginated list of strains.

### Example 
```objc

NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGStrainsApi*apiInstance = [[SWGStrainsApi alloc] init];

// Get a list of all current strains.
[apiInstance getStrainsWithPage:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse20011* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStrainsApi->getStrains: %@", error);
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

[**SWGInlineResponse20011***](SWGInlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

