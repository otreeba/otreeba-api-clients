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
    public interface ISeedCompaniesApi
    {
        /// <summary>
        /// Get a list of all current seed companies. Returns a paginated list of seed companies.
        /// </summary>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse2001</returns>
        InlineResponse2001 GetSeedCompanies (int? page, int? count, string sort);
        /// <summary>
        /// Find seed company by Open Cannabis Product Code (OCPC). Returns a single seed company.
        /// </summary>
        /// <param name="ocpc">OCPC of the seed company to return.</param>
        /// <returns>SeedCompany</returns>
        SeedCompany GetSeedCompanyByOcpc (string ocpc);
        /// <summary>
        /// Find strains for a seed company by Open Cannabis Product Code (OCPC). Returns a paginated list of strains for a single seed company.
        /// </summary>
        /// <param name="ocpc">OCPC of the seed company to return strains for.</param>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <returns>InlineResponse200</returns>
        InlineResponse200 GetSeedCompanyStrainsByOcpc (string ocpc, int? page, int? count);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class SeedCompaniesApi : ISeedCompaniesApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SeedCompaniesApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public SeedCompaniesApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="SeedCompaniesApi"/> class.
        /// </summary>
        /// <returns></returns>
        public SeedCompaniesApi(String basePath)
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
        /// Get a list of all current seed companies. Returns a paginated list of seed companies.
        /// </summary>
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse2001</returns>            
        public InlineResponse2001 GetSeedCompanies (int? page, int? count, string sort)
        {
            
    
            var path = "/seed-companies";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetSeedCompanies: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSeedCompanies: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2001) ApiClient.Deserialize(response.Content, typeof(InlineResponse2001), response.Headers);
        }
    
        /// <summary>
        /// Find seed company by Open Cannabis Product Code (OCPC). Returns a single seed company.
        /// </summary>
        /// <param name="ocpc">OCPC of the seed company to return.</param> 
        /// <returns>SeedCompany</returns>            
        public SeedCompany GetSeedCompanyByOcpc (string ocpc)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetSeedCompanyByOcpc");
            
    
            var path = "/seed-companies/{ocpc}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetSeedCompanyByOcpc: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSeedCompanyByOcpc: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SeedCompany) ApiClient.Deserialize(response.Content, typeof(SeedCompany), response.Headers);
        }
    
        /// <summary>
        /// Find strains for a seed company by Open Cannabis Product Code (OCPC). Returns a paginated list of strains for a single seed company.
        /// </summary>
        /// <param name="ocpc">OCPC of the seed company to return strains for.</param> 
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <returns>InlineResponse200</returns>            
        public InlineResponse200 GetSeedCompanyStrainsByOcpc (string ocpc, int? page, int? count)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetSeedCompanyStrainsByOcpc");
            
    
            var path = "/seed-companies/{ocpc}/strains";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "ocpc" + "}", ApiClient.ParameterToString(ocpc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (page != null) queryParams.Add("page", ApiClient.ParameterToString(page)); // query parameter
 if (count != null) queryParams.Add("count", ApiClient.ParameterToString(count)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSeedCompanyStrainsByOcpc: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSeedCompanyStrainsByOcpc: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse200) ApiClient.Deserialize(response.Content, typeof(InlineResponse200), response.Headers);
        }
    
    }
}
