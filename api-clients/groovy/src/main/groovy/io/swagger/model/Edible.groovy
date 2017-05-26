package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.Date;
@Canonical
class Edible {

  /* Name of the edible. */
  String name = null

  /* Open Cannabis Product Code for the edible. */
  String ocpc = null

  /* Name and Open Cannabis Product Code of the brand that created this edible. */
  Object brand = null

  /* Type of edible. */
  String type = null

  /* Name and Open Cannabis Product Code of the strain for this edible. */
  Object strain = null

  /* Description of the edible. */
  String description = null

  /* URL for QR that leads to page on Cannabis Reports. */
  String qr = null

  /* URL for the edible on Cannabis Reports. */
  String url = null

  /* URL for the main photo of the edible. */
  String image = null

  /* URL for the PDF containing lab testing information for this edible. */
  String labTest = null

  /* THC measurement for this edible. */
  String thc = null

  /* CBD measurement for this edible. */
  String cbd = null

  /* Cannabis measurement for this edible. */
  String cannabis = null

  /* Hash oil measurement for this edible. */
  String hashOil = null

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

