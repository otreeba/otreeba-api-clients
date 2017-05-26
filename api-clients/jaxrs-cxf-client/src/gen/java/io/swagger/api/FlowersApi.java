package io.swagger.api;

import io.swagger.model.Flower;
import io.swagger.model.InlineResponse2004;

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
public interface FlowersApi  {

    @GET
    @Path("/flowers/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find flower by Open Cannabis Product Code (OCPC).", tags={  })
    public Flower getFlowerByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/flowers")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current flowers.", tags={  })
    public InlineResponse2004 getFlowers(@QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);
}

