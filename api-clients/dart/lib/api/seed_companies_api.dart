part of swagger.api;



class SeedCompaniesApi {
  final ApiClient apiClient;

  SeedCompaniesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of all current seed companies.
  ///
  /// Returns a paginated list of seed companies.
  Future<InlineResponse200> getSeedCompanies({ int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/seed-companies".replaceAll("{format}","json");

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
    List<String> authNames = ["api_key"];

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
      return apiClient.deserialize(response.body, 'InlineResponse200') as InlineResponse200 ;
    } else {
      return null;
    }
  }
  /// Find seed company by Open Cannabis Product Code (OCPC).
  ///
  /// Returns a single seed company.
  Future<SeedCompany> getSeedCompanyByOcpc(String ocpc) async {
    Object postBody = null;

    // verify required params are set
    if(ocpc == null) {
     throw new ApiException(400, "Missing required param: ocpc");
    }

    // create path and map variables
    String path = "/seed-companies/{ocpc}".replaceAll("{format}","json").replaceAll("{" + "ocpc" + "}", ocpc.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

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
      return apiClient.deserialize(response.body, 'SeedCompany') as SeedCompany ;
    } else {
      return null;
    }
  }
  /// Find strains for a seed company by Open Cannabis Product Code (OCPC).
  ///
  /// Returns a paginated list of strains for a single seed company.
  Future<InlineResponse2001> getSeedCompanyStrainsByOcpc(String ocpc, { int page, int count }) async {
    Object postBody = null;

    // verify required params are set
    if(ocpc == null) {
     throw new ApiException(400, "Missing required param: ocpc");
    }

    // create path and map variables
    String path = "/seed-companies/{ocpc}/strains".replaceAll("{format}","json").replaceAll("{" + "ocpc" + "}", ocpc.toString());

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
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

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
      return apiClient.deserialize(response.body, 'InlineResponse2001') as InlineResponse2001 ;
    } else {
      return null;
    }
  }
}
