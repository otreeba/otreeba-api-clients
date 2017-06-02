package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Condition (
  name: String,  // Name of the condition.
slug: Option[String],  // Slug based on the condition name.
description: Option[String],  // Description of the condition.
createdAt: Option[DateTime],  // Date and time record was created, UTC.
updatedAt: Option[DateTime]  // Date and time record was updated, UTC.
)
