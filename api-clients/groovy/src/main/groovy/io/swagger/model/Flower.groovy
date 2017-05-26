package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.Date;
@Canonical
class Flower {

  /* Name of the flowers. */
  String name = null

  /* Open Cannabis Product Code for the flowers. */
  String ocpc = null

  /* Name and Open Cannabis Product Code of the brand that created these flowers. */
  Object brand = null

  /* Type of flowers. */
  String type = null

  /* Name and Open Cannabis Product Code of the strain for these flowers. */
  Object strain = null

  /* Description of the flowers. */
  String description = null

  /* URL for QR that leads to page on Cannabis Reports. */
  String qr = null

  /* URL for the flowers on Cannabis Reports. */
  String url = null

  /* URL for the main photo of the flowers. */
  String image = null

  /* URL for the PDF containing lab testing information for these flowers. */
  String labTest = null

  /* THC measurement for these flowers. */
  String thc = null

  /* CBD measurement for these flowers. */
  String cbd = null

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

