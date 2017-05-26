# SWGExtractsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExtractByOcpc**](SWGExtractsApi.md#getextractbyocpc) | **GET** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
[**getExtracts**](SWGExtractsApi.md#getextracts) | **GET** /extracts | Get a list of all current extracts.


# **getExtractByOcpc**
```objc
-(NSURLSessionTask*) getExtractByOcpcWithOcpc: (NSString*) ocpc
        completionHandler: (void (^)(SWGExtract* output, NSError* error)) handler;
```

Find extract by Open Cannabis Product Code (OCPC).

Returns a single extract.

### Example 
```objc

NSString* ocpc = @"ocpc_example"; // OCPC of the extract to return.

SWGExtractsApi*apiInstance = [[SWGExtractsApi alloc] init];

// Find extract by Open Cannabis Product Code (OCPC).
[apiInstance getExtractByOcpcWithOcpc:ocpc
          completionHandler: ^(SWGExtract* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGExtractsApi->getExtractByOcpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the extract to return. | 

### Return type

[**SWGExtract***](SWGExtract.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExtracts**
```objc
-(NSURLSessionTask*) getExtractsWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;
```

Get a list of all current extracts.

Returns a paginated list of extracts.

### Example 
```objc

NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGExtractsApi*apiInstance = [[SWGExtractsApi alloc] init];

// Get a list of all current extracts.
[apiInstance getExtractsWithPage:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGExtractsApi->getExtracts: %@", error);
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

[**SWGInlineResponse2003***](SWGInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

