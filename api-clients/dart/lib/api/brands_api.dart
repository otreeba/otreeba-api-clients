part of swagger.api;



class BrandsApi {
  final ApiClient apiClient;

  BrandsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Find brand by Open Cannabis Product Code (OCPC).
  ///
  /// Returns a single brand.
  Future<Brand> getBrandByOcpc(String ocpc) async {
    Object postBody = null;

    // verify required params are set
    if(ocpc == null) {
     throw new ApiException(400, "Missing required param: ocpc");
    }

    // create path and map variables
    String path = "/brands/{ocpc}".replaceAll("{format}","json").replaceAll("{" + "ocpc" + "}", ocpc.toString());

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
      return apiClient.deserialize(response.body, 'Brand') as Brand ;
    } else {
      return null;
    }
  }
  /// Get a list of all current edibles for the given brand.
  ///
  /// Returns a paginated list of edibles.
  Future<InlineResponse2008> getBrandEdibles(String ocpc, { int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set
    if(ocpc == null) {
     throw new ApiException(400, "Missing required param: ocpc");
    }

    // create path and map variables
    String path = "/brands/{ocpc}/edibles".replaceAll("{format}","json").replaceAll("{" + "ocpc" + "}", ocpc.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse2008') as InlineResponse2008 ;
    } else {
      return null;
    }
  }
  /// Get a list of all current extracts for the given brand.
  ///
  /// Returns a paginated list of extracts.
  Future<InlineResponse2007> getBrandExtracts(String ocpc, { int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set
    if(ocpc == null) {
     throw new ApiException(400, "Missing required param: ocpc");
    }

    // create path and map variables
    String path = "/brands/{ocpc}/extracts".replaceAll("{format}","json").replaceAll("{" + "ocpc" + "}", ocpc.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse2007') as InlineResponse2007 ;
    } else {
      return null;
    }
  }
  /// Get a list of all current flowers for the given brand.
  ///
  /// Returns a paginated list of flowers.
  Future<InlineResponse2006> getBrandFlowers(String ocpc, { int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set
    if(ocpc == null) {
     throw new ApiException(400, "Missing required param: ocpc");
    }

    // create path and map variables
    String path = "/brands/{ocpc}/flowers".replaceAll("{format}","json").replaceAll("{" + "ocpc" + "}", ocpc.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// Get a list of all current products for the given brand.
  ///
  /// Returns a paginated list of products.
  Future<InlineResponse2009> getBrandProducts(String ocpc, { int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set
    if(ocpc == null) {
     throw new ApiException(400, "Missing required param: ocpc");
    }

    // create path and map variables
    String path = "/brands/{ocpc}/products".replaceAll("{format}","json").replaceAll("{" + "ocpc" + "}", ocpc.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse2009') as InlineResponse2009 ;
    } else {
      return null;
    }
  }
  /// Get a list of all current brands.
  ///
  /// Returns a paginated list of brands.
  Future<InlineResponse2005> getBrands({ int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/brands".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse2005') as InlineResponse2005 ;
    } else {
      return null;
    }
  }
}
