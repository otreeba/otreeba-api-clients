part of swagger.api;


@Entity()
class Pagination {
  /* Total number of results available. */
  @Property(name: 'total')
  int total = null;
  
/* Number of results to return. Default 10. Max 50. */
  @Property(name: 'count')
  int count = null;
  
/* Number of results per page. */
  @Property(name: 'per_page')
  int perPage = null;
  
/* Page of results. */
  @Property(name: 'current_page')
  int currentPage = null;
  
/* Total number of pages of results. */
  @Property(name: 'total_pages')
  int totalPages = null;
  
/* Links to the previous and/or next pages of results. */
  @Property(name: 'links')
  Object links = null;
  
  Pagination();

  @override
  String toString()  {
    return 'Pagination[total=$total, count=$count, perPage=$perPage, currentPage=$currentPage, totalPages=$totalPages, links=$links, ]';
  }

}

