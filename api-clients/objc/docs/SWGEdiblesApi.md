# SWGEdiblesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEdibleByOcpc**](SWGEdiblesApi.md#getediblebyocpc) | **GET** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
[**getEdibles**](SWGEdiblesApi.md#getedibles) | **GET** /edibles | Get a list of all current edibles.


# **getEdibleByOcpc**
```objc
-(NSURLSessionTask*) getEdibleByOcpcWithOcpc: (NSString*) ocpc
        completionHandler: (void (^)(SWGEdible* output, NSError* error)) handler;
```

Find edible by Open Cannabis Product Code (OCPC).

Returns a single edible.

### Example 
```objc

NSString* ocpc = @"ocpc_example"; // OCPC of the edible to return.

SWGEdiblesApi*apiInstance = [[SWGEdiblesApi alloc] init];

// Find edible by Open Cannabis Product Code (OCPC).
[apiInstance getEdibleByOcpcWithOcpc:ocpc
          completionHandler: ^(SWGEdible* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdiblesApi->getEdibleByOcpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **NSString***| OCPC of the edible to return. | 

### Return type

[**SWGEdible***](SWGEdible.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdibles**
```objc
-(NSURLSessionTask*) getEdiblesWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error)) handler;
```

Get a list of all current edibles.

Returns a paginated list of edibles.

### Example 
```objc

NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGEdiblesApi*apiInstance = [[SWGEdiblesApi alloc] init];

// Get a list of all current edibles.
[apiInstance getEdiblesWithPage:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEdiblesApi->getEdibles: %@", error);
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

[**SWGInlineResponse2002***](SWGInlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

