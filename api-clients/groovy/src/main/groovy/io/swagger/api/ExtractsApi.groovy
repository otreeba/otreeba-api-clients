package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.Extract
import io.swagger.model.InlineResponse2003

import java.util.*;

@Mixin(ApiUtils)
class ExtractsApi {
    String basePath = "https://api.otreeba.com/v1"
    String versionPath = "/api/v1"

    def getExtractByOcpc ( String ocpc, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/extracts/{ocpc}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (ocpc == null) {
            throw new RuntimeException("missing required params ocpc")
        }

        

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Extract.class )
                    
    }
    def getExtracts ( Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/extracts"

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
                    InlineResponse2003.class )
                    
    }
}
