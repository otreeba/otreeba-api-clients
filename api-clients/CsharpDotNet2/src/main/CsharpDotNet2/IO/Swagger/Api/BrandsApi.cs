using System;
using System.Collections.Generic;
using RestSharp;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IBrandsApi
    {
        /// <summary>
        /// Find brand by Open Cannabis Product Code (OCPC). Returns a single brand.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to return.</param>
        /// <returns>Brand</returns>
        Brand GetBrandByOcpc (string ocpc);
        /// <summary>
        /// Get a list of all current edibles for the given brand. Returns a paginated list of edibles.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to list edibles for.</param>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse2008</returns>
        InlineResponse2008 GetBrandEdibles (string ocpc, int? page, int? count, string sort);
        /// <summary>
        /// Get a list of all current extracts for the given brand. Returns a paginated list of extracts.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to list extracts for.</param>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse2007</returns>
        InlineResponse2007 GetBrandExtracts (string ocpc, int? page, int? count, string sort);
        /// <summary>
        /// Get a list of all current flowers for the given brand. Returns a paginated list of flowers.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to list flowers for.</param>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse2006</returns>
        InlineResponse2006 GetBrandFlowers (string ocpc, int? page, int? count, string sort);
        /// <summary>
        /// Get a list of all current products for the given brand. Returns a paginated list of products.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to list products for.</param>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse2009</returns>
        InlineResponse2009 GetBrandProducts (string ocpc, int? page, int? count, string sort);
        /// <summary>
        /// Get a list of all current brands. Returns a paginated list of brands.
        /// </summary>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse2005</returns>
        InlineResponse2005 GetBrands (int? page, int? count, string sort);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class BrandsApi : IBrandsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BrandsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public BrandsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="BrandsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public BrandsApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        /// Find brand by Open Cannabis Product Code (OCPC). Returns a single brand.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to return.</param> 
        /// <returns>Brand</returns>            
        public Brand GetBrandByOcpc (string ocpc)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetBrandByOcpc");
            
    
            var path = "/brands/{ocpc}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "ocpc" + "}", ApiClient.ParameterToString(ocpc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "api_key" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandByOcpc: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandByOcpc: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Brand) ApiClient.Deserialize(response.Content, typeof(Brand), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current edibles for the given brand. Returns a paginated list of edibles.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to list edibles for.</param> 
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse2008</returns>            
        public InlineResponse2008 GetBrandEdibles (string ocpc, int? page, int? count, string sort)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetBrandEdibles");
            
    
            var path = "/brands/{ocpc}/edibles";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "ocpc" + "}", ApiClient.ParameterToString(ocpc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (page != null) queryParams.Add("page", ApiClient.ParameterToString(page)); // query parameter
 if (count != null) queryParams.Add("count", ApiClient.ParameterToString(count)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "api_key" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandEdibles: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandEdibles: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2008) ApiClient.Deserialize(response.Content, typeof(InlineResponse2008), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current extracts for the given brand. Returns a paginated list of extracts.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to list extracts for.</param> 
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse2007</returns>            
        public InlineResponse2007 GetBrandExtracts (string ocpc, int? page, int? count, string sort)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetBrandExtracts");
            
    
            var path = "/brands/{ocpc}/extracts";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "ocpc" + "}", ApiClient.ParameterToString(ocpc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (page != null) queryParams.Add("page", ApiClient.ParameterToString(page)); // query parameter
 if (count != null) queryParams.Add("count", ApiClient.ParameterToString(count)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "api_key" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandExtracts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandExtracts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2007) ApiClient.Deserialize(response.Content, typeof(InlineResponse2007), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current flowers for the given brand. Returns a paginated list of flowers.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to list flowers for.</param> 
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse2006</returns>            
        public InlineResponse2006 GetBrandFlowers (string ocpc, int? page, int? count, string sort)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetBrandFlowers");
            
    
            var path = "/brands/{ocpc}/flowers";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "ocpc" + "}", ApiClient.ParameterToString(ocpc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (page != null) queryParams.Add("page", ApiClient.ParameterToString(page)); // query parameter
 if (count != null) queryParams.Add("count", ApiClient.ParameterToString(count)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "api_key" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandFlowers: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandFlowers: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2006) ApiClient.Deserialize(response.Content, typeof(InlineResponse2006), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current products for the given brand. Returns a paginated list of products.
        /// </summary>
        /// <param name="ocpc">OCPC of the brand to list products for.</param> 
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse2009</returns>            
        public InlineResponse2009 GetBrandProducts (string ocpc, int? page, int? count, string sort)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetBrandProducts");
            
    
            var path = "/brands/{ocpc}/products";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "ocpc" + "}", ApiClient.ParameterToString(ocpc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (page != null) queryParams.Add("page", ApiClient.ParameterToString(page)); // query parameter
 if (count != null) queryParams.Add("count", ApiClient.ParameterToString(count)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "api_key" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandProducts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrandProducts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2009) ApiClient.Deserialize(response.Content, typeof(InlineResponse2009), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current brands. Returns a paginated list of brands.
        /// </summary>
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse2005</returns>            
        public InlineResponse2005 GetBrands (int? page, int? count, string sort)
        {
            
    
            var path = "/brands";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (page != null) queryParams.Add("page", ApiClient.ParameterToString(page)); // query parameter
 if (count != null) queryParams.Add("count", ApiClient.ParameterToString(count)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "api_key" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrands: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBrands: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2005) ApiClient.Deserialize(response.Content, typeof(InlineResponse2005), response.Headers);
        }
    
    }
}
