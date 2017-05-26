package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.InlineResponse200
import io.swagger.model.InlineResponse2001
import io.swagger.model.SeedCompany

import java.util.*;

@Mixin(ApiUtils)
class SeedCompaniesApi {
    String basePath = "https://api.otreeba.com/v1"
    String versionPath = "/api/v1"

    def getSeedCompanies ( Integer page, Integer count, String sort, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/seed-companies"

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
                    InlineResponse2001.class )
                    
    }
    def getSeedCompanyByOcpc ( String ocpc, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/seed-companies/{ocpc}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (ocpc == null) {
            throw new RuntimeException("missing required params ocpc")
        }

        

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    SeedCompany.class )
                    
    }
    def getSeedCompanyStrainsByOcpc ( String ocpc, Integer page, Integer count, Closure onSuccess, Closure onFailure)  {
        // create path and map variables
        String resourcePath = "/seed-companies/{ocpc}/strains"

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


        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    InlineResponse200.class )
                    
    }
}
