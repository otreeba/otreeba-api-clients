package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Pagination (
  total: Option[Integer],  // Total number of results available.
count: Option[Integer],  // Number of results to return. Default 10. Max 50.
per_page: Option[Integer],  // Number of results per page.
current_page: Option[Integer],  // Page of results.
total_pages: Option[Integer],  // Total number of pages of results.
links: Option[Any]  // Links to the previous and/or next pages of results.
)
