package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Edible (
  name: String,  // Name of the edible.
ocpc: Option[String],  // Open Cannabis Product Code for the edible.
brand: Option[Any],  // Name and Open Cannabis Product Code of the brand that created this edible.
_type: Option[String],  // Type of edible.
strain: Option[Any],  // Name and Open Cannabis Product Code of the strain for this edible.
description: Option[String],  // Description of the edible.
qr: Option[String],  // URL for QR that leads to page on Cannabis Reports.
url: Option[String],  // URL for the edible on Cannabis Reports.
image: Option[String],  // URL for the main photo of the edible.
labTest: Option[String],  // URL for the PDF containing lab testing information for this edible.
thc: Option[String],  // THC measurement for this edible.
cbd: Option[String],  // CBD measurement for this edible.
cannabis: Option[String],  // Cannabis measurement for this edible.
hashOil: Option[String],  // Hash oil measurement for this edible.
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
