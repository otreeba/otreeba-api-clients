#import "SWGStudiesApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGInlineResponse20012.h"
#import "SWGInlineResponse20013.h"
#import "SWGStudy.h"


@interface SWGStudiesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGStudiesApi

NSString* kSWGStudiesApiErrorDomain = @"SWGStudiesApiErrorDomain";
NSInteger kSWGStudiesApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Get a list of all current studies.
/// Returns a paginated list of studies.
///  @param page Page to be returned. (optional)
///
///  @param count The number of items to return. Default 10. Max 50. (optional, default to 10)
///
///  @param sort How to sort the items. (optional, default to -createdAt)
///
///  @returns SWGInlineResponse20012*
///
-(NSURLSessionTask*) getStudiesWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
    completionHandler: (void (^)(SWGInlineResponse20012* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/studies"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse20012*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20012*)data, error);
                                }
                            }];
}

///
/// Get a list of all current studies for a given condition.
/// Returns a paginated list of studies.
///  @param conditionSlug Slug of the condition to return studies for. 
///
///  @param page Page to be returned. (optional)
///
///  @param count The number of items to return. Default 10. Max 50. (optional, default to 10)
///
///  @param sort How to sort the items. (optional, default to -year)
///
///  @returns SWGInlineResponse20013*
///
-(NSURLSessionTask*) getStudiesByConditionWithConditionSlug: (NSString*) conditionSlug
    page: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
    completionHandler: (void (^)(SWGInlineResponse20013* output, NSError* error)) handler {
    // verify the required parameter 'conditionSlug' is set
    if (conditionSlug == nil) {
        NSParameterAssert(conditionSlug);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"conditionSlug"] };
            NSError* error = [NSError errorWithDomain:kSWGStudiesApiErrorDomain code:kSWGStudiesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/studies/conditions/{conditionSlug}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (conditionSlug != nil) {
        pathParams[@"conditionSlug"] = conditionSlug;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse20013*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20013*)data, error);
                                }
                            }];
}

///
/// Get a list of all current conditions for studies.
/// Returns a list of all current conditions for studies.
///  @param sort How to sort the items. (optional, default to name)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getStudiesConditionsWithSort: (NSString*) sort
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/studies/conditions"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Find study by DOI, PubMed ID, or slug.
/// Returns a single study.
///  @param identifierType Type of identifier to for the study to return. 
///
///  @param identifier Identifier for the study to return. 
///
///  @returns SWGStudy*
///
-(NSURLSessionTask*) getStudyByIdentifierWithIdentifierType: (NSString*) identifierType
    identifier: (NSString*) identifier
    completionHandler: (void (^)(SWGStudy* output, NSError* error)) handler {
    // verify the required parameter 'identifierType' is set
    if (identifierType == nil) {
        NSParameterAssert(identifierType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"identifierType"] };
            NSError* error = [NSError errorWithDomain:kSWGStudiesApiErrorDomain code:kSWGStudiesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'identifier' is set
    if (identifier == nil) {
        NSParameterAssert(identifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"identifier"] };
            NSError* error = [NSError errorWithDomain:kSWGStudiesApiErrorDomain code:kSWGStudiesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/studies/{identifierType}/{identifier}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (identifierType != nil) {
        pathParams[@"identifierType"] = identifierType;
    }
    if (identifier != nil) {
        pathParams[@"identifier"] = identifier;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGStudy*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGStudy*)data, error);
                                }
                            }];
}



@end
