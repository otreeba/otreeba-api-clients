package io.swagger.client.api {

import io.swagger.common.ApiInvoker;
import io.swagger.exception.ApiErrorCodes;
import io.swagger.exception.ApiError;
import io.swagger.common.ApiUserCredentials;
import io.swagger.event.Response;
import io.swagger.common.SwaggerApi;
import io.swagger.client.model.InlineResponse20011;
import io.swagger.client.model.Strain;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class StrainsApi extends SwaggerApi {
    /**
    * Constructor for the StrainsApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function StrainsApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_get_strain_by_ocpc: String = "get_strain_by_ocpc";
        public static const event_get_strains: String = "get_strains";


    /*
     * Returns Strain 
     */
    public function get_strain_by_ocpc (ocpc: String): String {
        // create path and map variables
        var path: String = "/strains/{ocpc}".replace(/{format}/g,"xml").replace("{" + "ocpc" + "}", getApiInvoker().escapeString(ocpc));

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
        token.completionEventType = "get_strain_by_ocpc";

        token.returnType = Strain;
        return requestId;

    }

    /*
     * Returns InlineResponse20011 
     */
    public function get_strains (page: Number, count: Number, sort: String): String {
        // create path and map variables
        var path: String = "/strains".replace(/{format}/g,"xml");

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
        token.completionEventType = "get_strains";

        token.returnType = InlineResponse20011;
        return requestId;

    }
}
}
