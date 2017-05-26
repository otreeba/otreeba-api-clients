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
import io.swagger.jaxrs.PATCH;

@Path("/")
@Api(value = "/", description = "")
public interface BrandsApi  {

    @GET
    @Path("/brands/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find brand by Open Cannabis Product Code (OCPC).", tags={  })
    public Brand getBrandByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/brands/{ocpc}/edibles")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current edibles for the given brand.", tags={  })
    public InlineResponse2008 getBrandEdibles(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);

    @GET
    @Path("/brands/{ocpc}/extracts")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current extracts for the given brand.", tags={  })
    public InlineResponse2007 getBrandExtracts(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);

    @GET
    @Path("/brands/{ocpc}/flowers")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current flowers for the given brand.", tags={  })
    public InlineResponse2006 getBrandFlowers(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);

    @GET
    @Path("/brands/{ocpc}/products")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current products for the given brand.", tags={  })
    public InlineResponse2009 getBrandProducts(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);

    @GET
    @Path("/brands")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current brands.", tags={  })
    public InlineResponse2005 getBrands(@QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);
}

