package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Strain (
  name: String,  // Name of the strain.
ocpc: Option[String],  // Open Cannabis Product Code for the strain.
seedCompany: Option[Any],  // Name and Open Cannabis Product Code of the seed company that created the strain.
qr: Option[String],  // URL for QR that leads to page on Cannabis Reports.
url: Option[String],  // URL for strain on Cannabis Reports.
image: Option[String],  // URL for the main photo of the strain.
lineage: Option[Any],  // Object of countries that this strain has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;}
genetics: Option[Any],  // Names of the parents of the strains and their associated Open Cannabis Product Codes.
children: Option[List[String]],  // Open Cannabis Product Codes of the children of this strain.
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
