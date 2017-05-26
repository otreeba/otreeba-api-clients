package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Extract (
  name: String,  // Name of the extract.
ocpc: Option[String],  // Open Cannabis Product Code for the extract.
brand: Option[Any],  // Name and Open Cannabis Product Code of the brand that created these extract.
_type: Option[String],  // Type of extract.
strain: Option[Any],  // Name and Open Cannabis Product Code of the strain for these extract.
description: Option[String],  // Description of the extract.
qr: Option[String],  // URL for QR that leads to page on Cannabis Reports.
url: Option[String],  // URL for the extract on Cannabis Reports.
image: Option[String],  // URL for the main photo of the extract.
labTest: Option[String],  // URL for the PDF containing lab testing information for these extract.
thc: Option[String],  // THC measurement for these extract.
cbd: Option[String],  // CBD measurement for these extract.
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
