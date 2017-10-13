package io.swagger.api;

import io.swagger.model.InlineResponse20011;
import io.swagger.model.Strain;

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
public interface StrainsApi  {

    @GET
    @Path("/strains/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find strain by Open Cannabis Product Code (OCPC).", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = Strain.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Strain not found.", response = .class) })
    public Strain getStrainByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/strains")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current strains.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse20011.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Strain not found.", response = .class) })
    public InlineResponse20011 getStrains(@QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-createdAt") String sort);
}

