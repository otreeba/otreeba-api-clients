package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Product (
  name: String,  // Name of the product.
ocpc: Option[String],  // Open Cannabis Product Code for the product.
brand: Option[Any],  // Name and Open Cannabis Product Code of the brand that created this product.
_type: Option[String],  // Type of product.
strain: Option[Any],  // Name and Open Cannabis Product Code of the strain for this product.
description: Option[String],  // Description of the product.
qr: Option[String],  // URL for QR that leads to page on Cannabis Reports.
url: Option[String],  // URL for the product on Cannabis Reports.
image: Option[String],  // URL for the main photo of the product.
labTest: Option[String],  // URL for the PDF containing lab testing information for this product.
thc: Option[String],  // THC measurement for this product.
cbd: Option[String],  // CBD measurement for this product.
cannabis: Option[String],  // Cannabis measurement for this product.
hashOil: Option[String],  // Hash oil measurement for this product.
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
