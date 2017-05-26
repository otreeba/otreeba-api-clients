package io.swagger.api;

import io.swagger.model.Edible;
import io.swagger.model.InlineResponse2002;

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
public interface EdiblesApi  {

    @GET
    @Path("/edibles/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find edible by Open Cannabis Product Code (OCPC).", tags={  })
    public Edible getEdibleByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/edibles")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current edibles.", tags={  })
    public InlineResponse2002 getEdibles(@QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);
}

