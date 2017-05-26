package io.swagger.api;

import io.swagger.model.InlineResponse20010;
import io.swagger.model.Product;

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
public interface ProductsApi  {

    @GET
    @Path("/products/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find product by Open Cannabis Product Code (OCPC).", tags={  })
    public Product getProductByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/products")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current products.", tags={  })
    public InlineResponse20010 getProducts(@QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);
}

