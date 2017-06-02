part of swagger.api;



class StudiesApi {
  final ApiClient apiClient;

  StudiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of all current studies.
  ///
  /// Returns a paginated list of studies.
  Future<InlineResponse20012> getStudies({ int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/studies".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "count", count));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse20012') as InlineResponse20012 ;
    } else {
      return null;
    }
  }
  /// Get a list of all current studies for a given condition.
  ///
  /// Returns a paginated list of studies.
  Future<InlineResponse20013> getStudiesByCondition(String conditionSlug, { int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set
    if(conditionSlug == null) {
     throw new ApiException(400, "Missing required param: conditionSlug");
    }

    // create path and map variables
    String path = "/studies/conditions/{conditionSlug}".replaceAll("{format}","json").replaceAll("{" + "conditionSlug" + "}", conditionSlug.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "count", count));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse20013') as InlineResponse20013 ;
    } else {
      return null;
    }
  }
  /// Get a list of all current conditions for studies.
  ///
  /// Returns a list of all current conditions for studies.
  Future<Object> getStudiesConditions({ String sort }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/studies/conditions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Find study by DOI, PubMed ID, or slug.
  ///
  /// Returns a single study.
  Future<Study> getStudyByIdentifier(String identifierType, String identifier) async {
    Object postBody = null;

    // verify required params are set
    if(identifierType == null) {
     throw new ApiException(400, "Missing required param: identifierType");
    }
    if(identifier == null) {
     throw new ApiException(400, "Missing required param: identifier");
    }

    // create path and map variables
    String path = "/studies/{identifierType}/{identifier}".replaceAll("{format}","json").replaceAll("{" + "identifierType" + "}", identifierType.toString()).replaceAll("{" + "identifier" + "}", identifier.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'Study') as Study ;
    } else {
      return null;
    }
  }
}
