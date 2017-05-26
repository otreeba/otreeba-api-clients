package io.swagger.client.api {

import io.swagger.common.ApiInvoker;
import io.swagger.exception.ApiErrorCodes;
import io.swagger.exception.ApiError;
import io.swagger.common.ApiUserCredentials;
import io.swagger.event.Response;
import io.swagger.common.SwaggerApi;
import io.swagger.client.model.Extract;
import io.swagger.client.model.InlineResponse2003;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class ExtractsApi extends SwaggerApi {
    /**
    * Constructor for the ExtractsApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function ExtractsApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_get_extract_by_ocpc: String = "get_extract_by_ocpc";
        public static const event_get_extracts: String = "get_extracts";


    /*
     * Returns Extract 
     */
    public function get_extract_by_ocpc (ocpc: String): String {
        // create path and map variables
        var path: String = "/extracts/{ocpc}".replace(/{format}/g,"xml").replace("{" + "ocpc" + "}", getApiInvoker().escapeString(ocpc));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_extract_by_ocpc";

        token.returnType = Extract;
        return requestId;

    }

    /*
     * Returns InlineResponse2003 
     */
    public function get_extracts (page: Number, count: Number, sort: String): String {
        // create path and map variables
        var path: String = "/extracts".replace(/{format}/g,"xml");

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
        token.completionEventType = "get_extracts";

        token.returnType = InlineResponse2003;
        return requestId;

    }
}
}
