package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.Date;
import java.util.List;
@Canonical
class SeedCompany {

  /* Name of the seed company. */
  String name = null

  /* Open Cannabis Product Code for the seed company. */
  String ocpc = null

  /* Description of the seed company. */
  String description = null

  /* URL for QR that leads to page on Cannabis Reports. */
  String qr = null

  /* URL for seed company on Cannabis Reports. */
  String url = null

  /* URL for logo for seed company. */
  String image = null

  /* Object of countries that this seed company has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'} */
  Object lineage = null

  /* OCPCs of the strains from this seed company. */
  List<String> strains = new ArrayList<String>()

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

