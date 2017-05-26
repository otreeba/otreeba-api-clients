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
import io.swagger.jaxrs.PATCH;

@Path("/")
@Api(value = "/", description = "")
public interface StrainsApi  {

    @GET
    @Path("/strains/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find strain by Open Cannabis Product Code (OCPC).", tags={  })
    public Strain getStrainByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/strains")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current strains.", tags={  })
    public InlineResponse20011 getStrains(@QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);
}

