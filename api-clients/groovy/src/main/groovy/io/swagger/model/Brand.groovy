package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.Date;
import java.util.List;
@Canonical
class Brand {

  /* Name of the brand. */
  String name = null

  /* Open Cannabis Product Code for the brand. */
  String ocpc = null

  /* URL for brand on Otreeba. */
  String link = null

  /* URL for QR that leads to page on Cannabis Reports. */
  String qr = null

  /* URL for brand on Cannabis Reports. */
  String url = null

  /* URL for logo for brand. */
  String image = null

  /* OCPCs of the flowers from this brand. */
  List<String> flowers = new ArrayList<String>()

  /* OCPCs of the extracts from this brand. */
  List<String> extracts = new ArrayList<String>()

  /* OCPCs of the edibles from this brand. */
  List<String> edibles = new ArrayList<String>()

  /* OCPCs of the products from this brand. */
  List<String> products = new ArrayList<String>()

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

