package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.Date;
@Canonical
class Extract {

  /* Name of the extract. */
  String name = null

  /* Open Cannabis Product Code for the extract. */
  String ocpc = null

  /* Name and Open Cannabis Product Code of the brand that created these extract. */
  Object brand = null

  /* Type of extract. */
  String type = null

  /* Name and Open Cannabis Product Code of the strain for these extract. */
  Object strain = null

  /* Description of the extract. */
  String description = null

  /* URL for QR that leads to page on Cannabis Reports. */
  String qr = null

  /* URL for the extract on Cannabis Reports. */
  String url = null

  /* URL for the main photo of the extract. */
  String image = null

  /* URL for the PDF containing lab testing information for these extract. */
  String labTest = null

  /* THC measurement for these extract. */
  String thc = null

  /* CBD measurement for these extract. */
  String cbd = null

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

