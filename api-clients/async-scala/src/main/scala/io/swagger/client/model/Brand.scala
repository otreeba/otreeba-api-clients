package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Brand (
  name: String,  // Name of the brand.
ocpc: Option[String],  // Open Cannabis Product Code for the brand.
link: Option[String],  // URL for brand on Otreeba.
qr: Option[String],  // URL for QR that leads to page on Cannabis Reports.
url: Option[String],  // URL for brand on Cannabis Reports.
image: Option[String],  // URL for logo for brand.
flowers: Option[List[String]],  // OCPCs of the flowers from this brand.
extracts: Option[List[String]],  // OCPCs of the extracts from this brand.
edibles: Option[List[String]],  // OCPCs of the edibles from this brand.
products: Option[List[String]],  // OCPCs of the products from this brand.
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
