goog.provide('API.Client.Pagination');

/**
 * @record
 */
API.Client.Pagination = function() {}

/**
 * Total number of results available.
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.total;

/**
 * Number of results to return. Default 10. Max 50.
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.count;

/**
 * Number of results per page.
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.perPage;

/**
 * Page of results.
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.currentPage;

/**
 * Total number of pages of results.
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.totalPages;

/**
 * Links to the previous and/or next pages of results.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Pagination.prototype.links;

