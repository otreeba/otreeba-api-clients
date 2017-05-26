package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class Pagination {

  /* Total number of results available. */
  Integer total = null

  /* Number of results to return. Default 10. Max 50. */
  Integer count = null

  /* Number of results per page. */
  Integer perPage = null

  /* Page of results. */
  Integer currentPage = null

  /* Total number of pages of results. */
  Integer totalPages = null

  /* Links to the previous and/or next pages of results. */
  Object links = null
  

}

