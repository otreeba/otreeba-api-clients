package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.Date;
@Canonical
class Condition {

  /* Name of the condition. */
  String name = null

  /* Slug based on the condition name. */
  String slug = null

  /* Description of the condition. */
  String description = null

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

