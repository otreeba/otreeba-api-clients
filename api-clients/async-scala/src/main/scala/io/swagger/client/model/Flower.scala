package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Flower (
  name: String,  // Name of the flowers.
ocpc: Option[String],  // Open Cannabis Product Code for the flowers.
brand: Option[Any],  // Name and Open Cannabis Product Code of the brand that created these flowers.
_type: Option[String],  // Type of flowers.
strain: Option[Any],  // Name and Open Cannabis Product Code of the strain for these flowers.
description: Option[String],  // Description of the flowers.
qr: Option[String],  // URL for QR that leads to page on Cannabis Reports.
url: Option[String],  // URL for the flowers on Cannabis Reports.
image: Option[String],  // URL for the main photo of the flowers.
labTest: Option[String],  // URL for the PDF containing lab testing information for these flowers.
thc: Option[String],  // THC measurement for these flowers.
cbd: Option[String],  // CBD measurement for these flowers.
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
