package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.Flower
import io.swagger.model.InlineResponse2004

import java.util.*;

@Mixin(ApiUtils)
class FlowersApi {
    String basePath = "https://api.otreeba.com/v1"
    String versionPath = "/api/v1"

    def getFlowerByOcpc ( String ocpc, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/flowers/{ocpc}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (ocpc == null) {
            throw new RuntimeException("missing required params ocpc")
        }

        

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Flower.class )
                    
    }
    def getFlowers ( Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/flowers"

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
                    InlineResponse2004.class )
                    
    }
}
