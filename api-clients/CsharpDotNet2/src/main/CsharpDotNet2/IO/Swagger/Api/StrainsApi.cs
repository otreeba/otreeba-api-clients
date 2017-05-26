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
    public interface IStrainsApi
    {
        /// <summary>
        /// Find strain by Open Cannabis Product Code (OCPC). Returns a single strain.
        /// </summary>
        /// <param name="ocpc">OCPC of the strain to return.</param>
        /// <returns>Strain</returns>
        Strain GetStrainByOcpc (string ocpc);
        /// <summary>
        /// Get a list of all current strains. Returns a paginated list of strains.
        /// </summary>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse20011</returns>
        InlineResponse20011 GetStrains (int? page, int? count, string sort);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class StrainsApi : IStrainsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="StrainsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public StrainsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="StrainsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public StrainsApi(String basePath)
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
        /// Find strain by Open Cannabis Product Code (OCPC). Returns a single strain.
        /// </summary>
        /// <param name="ocpc">OCPC of the strain to return.</param> 
        /// <returns>Strain</returns>            
        public Strain GetStrainByOcpc (string ocpc)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetStrainByOcpc");
            
    
            var path = "/strains/{ocpc}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "ocpc" + "}", ApiClient.ParameterToString(ocpc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStrainByOcpc: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStrainByOcpc: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Strain) ApiClient.Deserialize(response.Content, typeof(Strain), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current strains. Returns a paginated list of strains.
        /// </summary>
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse20011</returns>            
        public InlineResponse20011 GetStrains (int? page, int? count, string sort)
        {
            
    
            var path = "/strains";
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStrains: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStrains: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20011) ApiClient.Deserialize(response.Content, typeof(InlineResponse20011), response.Headers);
        }
    
    }
}
