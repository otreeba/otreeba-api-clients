package io.swagger.api;

import io.swagger.model.InlineResponse20012;
import io.swagger.model.InlineResponse20013;
import io.swagger.model.Study;

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
public interface StudiesApi  {

    @GET
    @Path("/studies")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current studies.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse20012.class),
        @ApiResponse(code = 400, message = "Invalid arguments supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Study not found.", response = .class) })
    public InlineResponse20012 getStudies(@QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-createdAt") String sort);

    @GET
    @Path("/studies/conditions/{conditionSlug}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current studies for a given condition.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = InlineResponse20013.class),
        @ApiResponse(code = 400, message = "Invalid arguments supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Condition.", response = .class) })
    public InlineResponse20013 getStudiesByCondition(@PathParam("conditionSlug") String conditionSlug, @QueryParam("page")Integer page, @QueryParam("count")@DefaultValue("10") Integer count, @QueryParam("sort")@DefaultValue("-year") String sort);

    @GET
    @Path("/studies/conditions")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current conditions for studies.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = Object.class),
        @ApiResponse(code = 400, message = "Invalid arguments supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class) })
    public Object getStudiesConditions(@QueryParam("sort")@DefaultValue("name") String sort);

    @GET
    @Path("/studies/{identifierType}/{identifier}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find study by DOI, PubMed ID, or slug.", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful operation.", response = Study.class),
        @ApiResponse(code = 400, message = "Invalid argument supplied.", response = .class),
        @ApiResponse(code = 401, message = "Unauthorized action.", response = .class),
        @ApiResponse(code = 404, message = "Study not found.", response = .class) })
    public Study getStudyByIdentifier(@PathParam("identifierType") String identifierType, @PathParam("identifier") String identifier);
}

