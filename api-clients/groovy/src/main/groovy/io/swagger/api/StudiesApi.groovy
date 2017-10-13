package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.InlineResponse20012
import io.swagger.model.InlineResponse20013
import io.swagger.model.Study

import java.util.*;

@Mixin(ApiUtils)
class StudiesApi {
    String basePath = "https://api.otreeba.com/v1"
    String versionPath = "/api/v1"

    def getStudies ( Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/studies"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(count)))
            queryParams.put("count", String.valueOf(count))
if (!"null".equals(String.valueOf(sort)))
            queryParams.put("sort", String.valueOf(sort))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    InlineResponse20012.class )
                    
    }
    def getStudiesByCondition ( String conditionSlug, Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/studies/conditions/{conditionSlug}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (conditionSlug == null) {
            throw new RuntimeException("missing required params conditionSlug")
        }

        if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(count)))
            queryParams.put("count", String.valueOf(count))
if (!"null".equals(String.valueOf(sort)))
            queryParams.put("sort", String.valueOf(sort))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    InlineResponse20013.class )
                    
    }
    def getStudiesConditions ( String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/studies/conditions"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        if (!"null".equals(String.valueOf(sort)))
            queryParams.put("sort", String.valueOf(sort))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Object.class )
                    
    }
    def getStudyByIdentifier ( String identifierType, String identifier, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/studies/{identifierType}/{identifier}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (identifierType == null) {
            throw new RuntimeException("missing required params identifierType")
        }
        // verify required params are set
        if (identifier == null) {
            throw new RuntimeException("missing required params identifier")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Study.class )
                    
    }
}
