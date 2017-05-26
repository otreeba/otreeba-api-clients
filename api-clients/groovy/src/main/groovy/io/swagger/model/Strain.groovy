package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.Date;
import java.util.List;
@Canonical
class Strain {

  /* Name of the strain. */
  String name = null

  /* Open Cannabis Product Code for the strain. */
  String ocpc = null

  /* Name and Open Cannabis Product Code of the seed company that created the strain. */
  Object seedCompany = null

  /* URL for QR that leads to page on Cannabis Reports. */
  String qr = null

  /* URL for strain on Cannabis Reports. */
  String url = null

  /* URL for the main photo of the strain. */
  String image = null

  /* Object of countries that this strain has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'} */
  Object lineage = null

  /* Names of the parents of the strains and their associated Open Cannabis Product Codes. */
  Object genetics = null

  /* Open Cannabis Product Codes of the children of this strain. */
  List<String> children = new ArrayList<String>()

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

