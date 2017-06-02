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
    public interface IStudiesApi
    {
        /// <summary>
        /// Get a list of all current studies. Returns a paginated list of studies.
        /// </summary>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse20012</returns>
        InlineResponse20012 GetStudies (int? page, int? count, string sort);
        /// <summary>
        /// Get a list of all current studies for a given condition. Returns a paginated list of studies.
        /// </summary>
        /// <param name="conditionSlug">Slug of the condition to return studies for.</param>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse20013</returns>
        InlineResponse20013 GetStudiesByCondition (string conditionSlug, int? page, int? count, string sort);
        /// <summary>
        /// Get a list of all current conditions for studies. Returns a list of all current conditions for studies.
        /// </summary>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>Object</returns>
        Object GetStudiesConditions (string sort);
        /// <summary>
        /// Find study by DOI, PubMed ID, or slug. Returns a single study.
        /// </summary>
        /// <param name="identifierType">Type of identifier to for the study to return.</param>
        /// <param name="identifier">Identifier for the study to return.</param>
        /// <returns>Study</returns>
        Study GetStudyByIdentifier (string identifierType, string identifier);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class StudiesApi : IStudiesApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="StudiesApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public StudiesApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="StudiesApi"/> class.
        /// </summary>
        /// <returns></returns>
        public StudiesApi(String basePath)
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
        /// Get a list of all current studies. Returns a paginated list of studies.
        /// </summary>
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse20012</returns>            
        public InlineResponse20012 GetStudies (int? page, int? count, string sort)
        {
            
    
            var path = "/studies";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetStudies: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStudies: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20012) ApiClient.Deserialize(response.Content, typeof(InlineResponse20012), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current studies for a given condition. Returns a paginated list of studies.
        /// </summary>
        /// <param name="conditionSlug">Slug of the condition to return studies for.</param> 
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse20013</returns>            
        public InlineResponse20013 GetStudiesByCondition (string conditionSlug, int? page, int? count, string sort)
        {
            
            // verify the required parameter 'conditionSlug' is set
            if (conditionSlug == null) throw new ApiException(400, "Missing required parameter 'conditionSlug' when calling GetStudiesByCondition");
            
    
            var path = "/studies/conditions/{conditionSlug}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "conditionSlug" + "}", ApiClient.ParameterToString(conditionSlug));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetStudiesByCondition: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStudiesByCondition: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20013) ApiClient.Deserialize(response.Content, typeof(InlineResponse20013), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current conditions for studies. Returns a list of all current conditions for studies.
        /// </summary>
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>Object</returns>            
        public Object GetStudiesConditions (string sort)
        {
            
    
            var path = "/studies/conditions";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStudiesConditions: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStudiesConditions: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Find study by DOI, PubMed ID, or slug. Returns a single study.
        /// </summary>
        /// <param name="identifierType">Type of identifier to for the study to return.</param> 
        /// <param name="identifier">Identifier for the study to return.</param> 
        /// <returns>Study</returns>            
        public Study GetStudyByIdentifier (string identifierType, string identifier)
        {
            
            // verify the required parameter 'identifierType' is set
            if (identifierType == null) throw new ApiException(400, "Missing required parameter 'identifierType' when calling GetStudyByIdentifier");
            
            // verify the required parameter 'identifier' is set
            if (identifier == null) throw new ApiException(400, "Missing required parameter 'identifier' when calling GetStudyByIdentifier");
            
    
            var path = "/studies/{identifierType}/{identifier}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "identifierType" + "}", ApiClient.ParameterToString(identifierType));
path = path.Replace("{" + "identifier" + "}", ApiClient.ParameterToString(identifier));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetStudyByIdentifier: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStudyByIdentifier: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Study) ApiClient.Deserialize(response.Content, typeof(Study), response.Headers);
        }
    
    }
}
