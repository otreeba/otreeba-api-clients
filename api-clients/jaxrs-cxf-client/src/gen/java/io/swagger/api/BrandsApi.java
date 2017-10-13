package io.swagger.api;

import io.swagger.model.Brand;
import io.swagger.model.InlineResponse2005;
import io.swagger.model.InlineResponse2006;
import io.swagger.model.InlineResponse2007;
import io.swagger.model.InlineResponse2008;
import io.swagger.model.InlineResponse2009;

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
public interface BrandsApi  {

    @GET
    @Path("/brands/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find brand by Open Cannabis Product Code (OCPC).", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = Brand.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Brand not found.", response = .class) })
    public Brand getBrandByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/brands/{ocpc}/edibles")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current edibles for the given brand.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse2008.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Brand not found.", response = .class) })
    public InlineResponse2008 getBrandEdibles(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-createdAt") String sort);

    @GET
    @Path("/brands/{ocpc}/extracts")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current extracts for the given brand.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse2007.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Brand not found.", response = .class) })
    public InlineResponse2007 getBrandExtracts(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-createdAt") String sort);

    @GET
    @Path("/brands/{ocpc}/flowers")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current flowers for the given brand.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse2006.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Brand not found.", response = .class) })
    public InlineResponse2006 getBrandFlowers(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-createdAt") String sort);

    @GET
    @Path("/brands/{ocpc}/products")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current products for the given brand.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse2009.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Brand not found.", response = .class) })
    public InlineResponse2009 getBrandProducts(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-createdAt") String sort);

    @GET
    @Path("/brands")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current brands.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse2005.class),
        @ApiResponse(code = 400, message = "Invalid OCPC supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Brand not found.", response = .class) })
    public InlineResponse2005 getBrands(@QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-createdAt") String sort);
}

