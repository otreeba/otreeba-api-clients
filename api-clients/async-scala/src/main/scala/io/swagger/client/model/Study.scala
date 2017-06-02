package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Study (
  name: String,  // Name of the study.
year: Option[Integer],  // Year of the study.
doi: Option[String],  // Digital Object Identifier for the study.
pubMedId: Option[String],  // PubMed ID for the study.
slug: Option[String],  // Slug based on the study name.
keyFindings: Option[String],  // Key findings for the study.
conditions: Option[List[Condition]],
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
