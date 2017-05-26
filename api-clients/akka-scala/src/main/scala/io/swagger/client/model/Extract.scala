/**
 * NOTE: This class is auto generated by the akka-scala (beta) swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * For any issue or feedback, please open a ticket via https://github.com/swagger-api/swagger-codegen/issues/new
 */

package io.swagger.client.model

import io.swagger.client.core.ApiModel
import org.joda.time.DateTime

case class Extract (
  /* Name of the extract. */
  name: String,
  /* Open Cannabis Product Code for the extract. */
  ocpc: Option[String],
  /* Name and Open Cannabis Product Code of the brand that created these extract. */
  brand: Option[Any],
  /* Type of extract. */
  `type`: Option[String],
  /* Name and Open Cannabis Product Code of the strain for these extract. */
  strain: Option[Any],
  /* Description of the extract. */
  description: Option[String],
  /* URL for QR that leads to page on Cannabis Reports. */
  qr: Option[String],
  /* URL for the extract on Cannabis Reports. */
  url: Option[String],
  /* URL for the main photo of the extract. */
  image: Option[String],
  /* URL for the PDF containing lab testing information for these extract. */
  labTest: Option[String],
  /* THC measurement for these extract. */
  thc: Option[String],
  /* CBD measurement for these extract. */
  cbd: Option[String],
  /* Date and time record was created, UTC. */
  createdAt: Option[DateTime],
  /* Date and time record was updated, UTC. */
  updatedAt: Option[DateTime]
) extends ApiModel

