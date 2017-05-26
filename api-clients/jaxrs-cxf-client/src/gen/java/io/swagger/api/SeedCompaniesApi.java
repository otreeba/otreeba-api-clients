package io.swagger.api;

import io.swagger.model.InlineResponse200;
import io.swagger.model.InlineResponse2001;
import io.swagger.model.SeedCompany;

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
public interface SeedCompaniesApi  {

    @GET
    @Path("/seed-companies")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a list of all current seed companies.", tags={  })
    public InlineResponse2001 getSeedCompanies(@QueryParam("page")Integer page, @QueryParam("count")Integer count, @QueryParam("sort")String sort);

    @GET
    @Path("/seed-companies/{ocpc}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find seed company by Open Cannabis Product Code (OCPC).", tags={  })
    public SeedCompany getSeedCompanyByOcpc(@PathParam("ocpc") String ocpc);

    @GET
    @Path("/seed-companies/{ocpc}/strains")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Find strains for a seed company by Open Cannabis Product Code (OCPC).", tags={  })
    public InlineResponse200 getSeedCompanyStrainsByOcpc(@PathParam("ocpc") String ocpc, @QueryParam("page")Integer page, @QueryParam("count")Integer count);
}

