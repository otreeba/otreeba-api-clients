# SWGStudiesApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStudies**](SWGStudiesApi.md#getstudies) | **GET** /studies | Get a list of all current studies.
[**getStudiesByCondition**](SWGStudiesApi.md#getstudiesbycondition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
[**getStudiesConditions**](SWGStudiesApi.md#getstudiesconditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
[**getStudyByIdentifier**](SWGStudiesApi.md#getstudybyidentifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


# **getStudies**
```objc
-(NSURLSessionTask*) getStudiesWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse20012* output, NSError* error)) handler;
```

Get a list of all current studies.

Returns a paginated list of studies.

### Example 
```objc

NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-createdAt"; // How to sort the items. (optional) (default to -createdAt)

SWGStudiesApi*apiInstance = [[SWGStudiesApi alloc] init];

// Get a list of all current studies.
[apiInstance getStudiesWithPage:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse20012* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStudiesApi->getStudies: %@", error);
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

[**SWGInlineResponse20012***](SWGInlineResponse20012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudiesByCondition**
```objc
-(NSURLSessionTask*) getStudiesByConditionWithConditionSlug: (NSString*) conditionSlug
    page: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;
```

Get a list of all current studies for a given condition.

Returns a paginated list of studies.

### Example 
```objc

NSString* conditionSlug = @"conditionSlug_example"; // Slug of the condition to return studies for.
NSNumber* page = @56; // Page to be returned. (optional)
NSNumber* count = @10; // The number of items to return. Default 10. Max 50. (optional) (default to 10)
NSString* sort = @"-year"; // How to sort the items. (optional) (default to -year)

SWGStudiesApi*apiInstance = [[SWGStudiesApi alloc] init];

// Get a list of all current studies for a given condition.
[apiInstance getStudiesByConditionWithConditionSlug:conditionSlug
              page:page
              count:count
              sort:sort
          completionHandler: ^(SWGInlineResponse20013* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStudiesApi->getStudiesByCondition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditionSlug** | **NSString***| Slug of the condition to return studies for. | 
 **page** | **NSNumber***| Page to be returned. | [optional] 
 **count** | **NSNumber***| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **NSString***| How to sort the items. | [optional] [default to -year]

### Return type

[**SWGInlineResponse20013***](SWGInlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudiesConditions**
```objc
-(NSURLSessionTask*) getStudiesConditionsWithSort: (NSString*) sort
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get a list of all current conditions for studies.

Returns a list of all current conditions for studies.

### Example 
```objc

NSString* sort = @"name"; // How to sort the items. (optional) (default to name)

SWGStudiesApi*apiInstance = [[SWGStudiesApi alloc] init];

// Get a list of all current conditions for studies.
[apiInstance getStudiesConditionsWithSort:sort
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStudiesApi->getStudiesConditions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **NSString***| How to sort the items. | [optional] [default to name]

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudyByIdentifier**
```objc
-(NSURLSessionTask*) getStudyByIdentifierWithIdentifierType: (NSString*) identifierType
    identifier: (NSString*) identifier
        completionHandler: (void (^)(SWGStudy* output, NSError* error)) handler;
```

Find study by DOI, PubMed ID, or slug.

Returns a single study.

### Example 
```objc

NSString* identifierType = @"identifierType_example"; // Type of identifier to for the study to return.
NSString* identifier = @"identifier_example"; // Identifier for the study to return.

SWGStudiesApi*apiInstance = [[SWGStudiesApi alloc] init];

// Find study by DOI, PubMed ID, or slug.
[apiInstance getStudyByIdentifierWithIdentifierType:identifierType
              identifier:identifier
          completionHandler: ^(SWGStudy* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStudiesApi->getStudyByIdentifier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifierType** | **NSString***| Type of identifier to for the study to return. | 
 **identifier** | **NSString***| Identifier for the study to return. | 

### Return type

[**SWGStudy***](SWGStudy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

