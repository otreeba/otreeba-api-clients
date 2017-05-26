package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class SeedCompany (
  name: String,  // Name of the seed company.
ocpc: Option[String],  // Open Cannabis Product Code for the seed company.
qr: Option[String],  // URL for QR that leads to page on Cannabis Reports.
url: Option[String],  // URL for seed company on Cannabis Reports.
image: Option[String],  // URL for logo for seed company.
lineage: Option[Any],  // Object of countries that this seed company has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;}
strains: Option[List[String]],  // OCPCs of the strains from this seed company.
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
