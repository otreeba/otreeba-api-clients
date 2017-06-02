/**
 * NOTE: This class is auto generated by the akka-scala (beta) swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * For any issue or feedback, please open a ticket via https://github.com/swagger-api/swagger-codegen/issues/new
 */

package io.swagger.client.model

import io.swagger.client.core.ApiModel
import org.joda.time.DateTime

case class Study (
  /* Name of the study. */
  name: String,
  /* Year of the study. */
  year: Option[Int],
  /* Digital Object Identifier for the study. */
  doi: Option[String],
  /* PubMed ID for the study. */
  pubMedId: Option[String],
  /* Slug based on the study name. */
  slug: Option[String],
  /* Key findings for the study. */
  keyFindings: Option[String],
  conditions: Option[Seq[Condition]],
  /* Date and time record was created, UTC. */
  createdAt: Option[DateTime],
  /* Date and time record was updated, UTC. */
  updatedAt: Option[DateTime]
) extends ApiModel


