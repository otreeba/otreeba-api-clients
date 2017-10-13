part of swagger.api;



class ProductsApi {
  final ApiClient apiClient;

  ProductsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Find product by Open Cannabis Product Code (OCPC).
  ///
  /// Returns a single product.
  Future<Product> getProductByOcpc(String ocpc) async {
    Object postBody = null;

    // verify required params are set
    if(ocpc == null) {
     throw new ApiException(400, "Missing required param: ocpc");
    }

    // create path and map variables
    String path = "/products/{ocpc}".replaceAll("{format}","json").replaceAll("{" + "ocpc" + "}", ocpc.toString());

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
      return apiClient.deserialize(response.body, 'Product') as Product ;
    } else {
      return null;
    }
  }
  /// Get a list of all current products.
  ///
  /// Returns a paginated list of products.
  Future<InlineResponse20010> getProducts({ int page, int count, String sort }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/products".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20010') as InlineResponse20010 ;
    } else {
      return null;
    }
  }
}
