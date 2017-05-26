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
    public interface IProductsApi
    {
        /// <summary>
        /// Find product by Open Cannabis Product Code (OCPC). Returns a single product.
        /// </summary>
        /// <param name="ocpc">OCPC of the product to return.</param>
        /// <returns>Product</returns>
        Product GetProductByOcpc (string ocpc);
        /// <summary>
        /// Get a list of all current products. Returns a paginated list of products.
        /// </summary>
        /// <param name="page">Page to be returned.</param>
        /// <param name="count">The number of items to return. Default 10. Max 50.</param>
        /// <param name="sort">How to sort the items.</param>
        /// <returns>InlineResponse20010</returns>
        InlineResponse20010 GetProducts (int? page, int? count, string sort);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class ProductsApi : IProductsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ProductsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public ProductsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="ProductsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public ProductsApi(String basePath)
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
        /// Find product by Open Cannabis Product Code (OCPC). Returns a single product.
        /// </summary>
        /// <param name="ocpc">OCPC of the product to return.</param> 
        /// <returns>Product</returns>            
        public Product GetProductByOcpc (string ocpc)
        {
            
            // verify the required parameter 'ocpc' is set
            if (ocpc == null) throw new ApiException(400, "Missing required parameter 'ocpc' when calling GetProductByOcpc");
            
    
            var path = "/products/{ocpc}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetProductByOcpc: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetProductByOcpc: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Product) ApiClient.Deserialize(response.Content, typeof(Product), response.Headers);
        }
    
        /// <summary>
        /// Get a list of all current products. Returns a paginated list of products.
        /// </summary>
        /// <param name="page">Page to be returned.</param> 
        /// <param name="count">The number of items to return. Default 10. Max 50.</param> 
        /// <param name="sort">How to sort the items.</param> 
        /// <returns>InlineResponse20010</returns>            
        public InlineResponse20010 GetProducts (int? page, int? count, string sort)
        {
            
    
            var path = "/products";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetProducts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetProducts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20010) ApiClient.Deserialize(response.Content, typeof(InlineResponse20010), response.Headers);
        }
    
    }
}
