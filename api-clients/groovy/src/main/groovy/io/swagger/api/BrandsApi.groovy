package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.Brand
import io.swagger.model.InlineResponse2005
import io.swagger.model.InlineResponse2006
import io.swagger.model.InlineResponse2007
import io.swagger.model.InlineResponse2008
import io.swagger.model.InlineResponse2009

import java.util.*;

@Mixin(ApiUtils)
class BrandsApi {
    String basePath = "https://api.otreeba.com/v1"
    String versionPath = "/api/v1"

    def getBrandByOcpc ( String ocpc, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/brands/{ocpc}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (ocpc == null) {
            throw new RuntimeException("missing required params ocpc")
        }

        

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Brand.class )
                    
    }
    def getBrandEdibles ( String ocpc, Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/brands/{ocpc}/edibles"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (ocpc == null) {
            throw new RuntimeException("missing required params ocpc")
        }

        if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(count)))
            queryParams.put("count", String.valueOf(count))
if (!"null".equals(String.valueOf(sort)))
            queryParams.put("sort", String.valueOf(sort))


        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    InlineResponse2008.class )
                    
    }
    def getBrandExtracts ( String ocpc, Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/brands/{ocpc}/extracts"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (ocpc == null) {
            throw new RuntimeException("missing required params ocpc")
        }

        if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(count)))
            queryParams.put("count", String.valueOf(count))
if (!"null".equals(String.valueOf(sort)))
            queryParams.put("sort", String.valueOf(sort))


        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    InlineResponse2007.class )
                    
    }
    def getBrandFlowers ( String ocpc, Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/brands/{ocpc}/flowers"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (ocpc == null) {
            throw new RuntimeException("missing required params ocpc")
        }

        if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(count)))
            queryParams.put("count", String.valueOf(count))
if (!"null".equals(String.valueOf(sort)))
            queryParams.put("sort", String.valueOf(sort))


        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    InlineResponse2006.class )
                    
    }
    def getBrandProducts ( String ocpc, Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/brands/{ocpc}/products"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (ocpc == null) {
            throw new RuntimeException("missing required params ocpc")
        }

        if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(count)))
            queryParams.put("count", String.valueOf(count))
if (!"null".equals(String.valueOf(sort)))
            queryParams.put("sort", String.valueOf(sort))


        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    InlineResponse2009.class )
                    
    }
    def getBrands ( Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/brands"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(count)))
            queryParams.put("count", String.valueOf(count))
if (!"null".equals(String.valueOf(sort)))
            queryParams.put("sort", String.valueOf(sort))


        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    InlineResponse2005.class )
                    
    }
}
