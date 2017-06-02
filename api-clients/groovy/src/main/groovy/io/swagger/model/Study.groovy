package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.Condition;
import io.swagger.model.Date;
import java.util.List;
@Canonical
class Study {

  /* Name of the study. */
  String name = null

  /* Year of the study. */
  Integer year = null

  /* Digital Object Identifier for the study. */
  String doi = null

  /* PubMed ID for the study. */
  String pubMedId = null

  /* Slug based on the study name. */
  String slug = null

  /* Key findings for the study. */
  String keyFindings = null

    List<Condition> conditions = new ArrayList<Condition>()

  /* Date and time record was created, UTC. */
  Date createdAt = null

  /* Date and time record was updated, UTC. */
  Date updatedAt = null
  

}

