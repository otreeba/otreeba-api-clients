package io.swagger.api;

import io.swagger.model.Extract;
import io.swagger.model.InlineResponse2003;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;

@Path("/")
@Api(value = "/", description = "")
public interface ExtractsApi  {

    @GET
    @Path("/extracts/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find extract by Open Cannabis Product Code (OCPC).", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = Extract.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Extract not found.", response = .class) })
    public Extract getExtractByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/extracts")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current extracts.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse2003.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Extract not found.", response = .class) })
    public InlineResponse2003 getExtracts(@QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-createdAt") String sort);
}

