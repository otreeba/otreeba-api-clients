package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.Date;
@Canonical
class Product {

  /* Name of the product. */
  String name = null

  /* Open Cannabis Product Code for the product. */
  String ocpc = null

  /* Name and Open Cannabis Product Code of the brand that created this product. */
  Object brand = null

  /* Type of product. */
  String type = null

  /* Name and Open Cannabis Product Code of the strain for this product. */
  Object strain = null

  /* Description of the product. */
  String description = null

  /* URL for QR that leads to page on Cannabis Reports. */
  String qr = null

  /* URL for the product on Cannabis Reports. */
  String url = null

  /* URL for the main photo of the product. */
  String image = null

  /* URL for the PDF containing lab testing information for this product. */
  String labTest = null

  /* THC measurement for this product. */
  String thc = null

  /* CBD measurement for this product. */
  String cbd = null

  /* Cannabis measurement for this product. */
  String cannabis = null

  /* Hash oil measurement for this product. */
  String hashOil = null

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

