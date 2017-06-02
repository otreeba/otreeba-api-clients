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
import io.swagger.jaxrs.PATCH;

@Path("/")
@Api(value = "/", description = "")
public interface StudiesApi  {

    @GET
    @Path("/studies")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current studies.", tags={  })
    public InlineResponse20012 getStudies(@QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);

    @GET
    @Path("/studies/conditions/{conditionSlug}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current studies for a given condition.", tags={  })
    public InlineResponse20013 getStudiesByCondition(@PathParam("conditionSlug") String conditionSlug, @QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);

    @GET
    @Path("/studies/conditions")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current conditions for studies.", tags={  })
    public Object getStudiesConditions(@QueryParam("sort")String sort);

    @GET
    @Path("/studies/{identifierType}/{identifier}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find study by DOI, PubMed ID, or slug.", tags={  })
    public Study getStudyByIdentifier(@PathParam("identifierType") String identifierType, @PathParam("identifier") String identifier);
}

