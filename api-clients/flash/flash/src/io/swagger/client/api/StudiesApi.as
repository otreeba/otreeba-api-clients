package io.swagger.client.api {

import io.swagger.common.ApiInvoker;
import io.swagger.exception.ApiErrorCodes;
import io.swagger.exception.ApiError;
import io.swagger.common.ApiUserCredentials;
import io.swagger.event.Response;
import io.swagger.common.SwaggerApi;
import io.swagger.client.model.InlineResponse20012;
import io.swagger.client.model.InlineResponse20013;
import io.swagger.client.model.Object;
import io.swagger.client.model.Study;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class StudiesApi extends SwaggerApi {
    /**
    * Constructor for the StudiesApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function StudiesApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_get_studies: String = "get_studies";
        public static const event_get_studies_by_condition: String = "get_studies_by_condition";
        public static const event_get_studies_conditions: String = "get_studies_conditions";
        public static const event_get_study_by_identifier: String = "get_study_by_identifier";


    /*
     * Returns InlineResponse20012 
     */
    public function get_studies (page: Number, count: Number, sort: String): String {
        // create path and map variables
        var path: String = "/studies".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(page))
            queryParams["page"] = toPathValue(page);
if("null" != String(count))
            queryParams["count"] = toPathValue(count);
if("null" != String(sort))
            queryParams["sort"] = toPathValue(sort);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_studies";

        token.returnType = InlineResponse20012;
        return requestId;

    }

    /*
     * Returns InlineResponse20013 
     */
    public function get_studies_by_condition (conditionSlug: String, page: Number, count: Number, sort: String): String {
        // create path and map variables
        var path: String = "/studies/conditions/{conditionSlug}".replace(/{format}/g,"xml").replace("{" + "conditionSlug" + "}", getApiInvoker().escapeString(conditionSlug));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(page))
            queryParams["page"] = toPathValue(page);
if("null" != String(count))
            queryParams["count"] = toPathValue(count);
if("null" != String(sort))
            queryParams["sort"] = toPathValue(sort);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_studies_by_condition";

        token.returnType = InlineResponse20013;
        return requestId;

    }

    /*
     * Returns Object 
     */
    public function get_studies_conditions (sort: String): String {
        // create path and map variables
        var path: String = "/studies/conditions".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(sort))
            queryParams["sort"] = toPathValue(sort);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_studies_conditions";

        token.returnType = Object;
        return requestId;

    }

    /*
     * Returns Study 
     */
    public function get_study_by_identifier (identifierType: String, identifier: String): String {
        // create path and map variables
        var path: String = "/studies/{identifierType}/{identifier}".replace(/{format}/g,"xml").replace("{" + "identifierType" + "}", getApiInvoker().escapeString(identifierType)).replace("{" + "identifier" + "}", getApiInvoker().escapeString(identifier));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_study_by_identifier";

        token.returnType = Study;
        return requestId;

    }
}
}
