goog.provide('API.Client.Brand');

/**
 * @record
 */
API.Client.Brand = function() {}

/**
 * Name of the brand.
 * @type {!string}
 * @export
 */
API.Client.Brand.prototype.name;

/**
 * Open Cannabis Product Code for the brand.
 * @type {!string}
 * @export
 */
API.Client.Brand.prototype.ocpc;

/**
 * URL for brand on Otreeba.
 * @type {!string}
 * @export
 */
API.Client.Brand.prototype.link;

/**
 * URL for QR that leads to page on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Brand.prototype.qr;

/**
 * URL for brand on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Brand.prototype.url;

/**
 * URL for logo for brand.
 * @type {!string}
 * @export
 */
API.Client.Brand.prototype.image;

/**
 * OCPCs of the flowers from this brand.
 * @type {!Array<!string>}
 * @export
 */
API.Client.Brand.prototype.flowers;

/**
 * OCPCs of the extracts from this brand.
 * @type {!Array<!string>}
 * @export
 */
API.Client.Brand.prototype.extracts;

/**
 * OCPCs of the edibles from this brand.
 * @type {!Array<!string>}
 * @export
 */
API.Client.Brand.prototype.edibles;

/**
 * OCPCs of the products from this brand.
 * @type {!Array<!string>}
 * @export
 */
API.Client.Brand.prototype.products;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Brand.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Brand.prototype.updatedAt;

