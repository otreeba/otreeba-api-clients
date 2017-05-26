goog.provide('API.Client.Product');

/**
 * @record
 */
API.Client.Product = function() {}

/**
 * Name of the product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.name;

/**
 * Open Cannabis Product Code for the product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.ocpc;

/**
 * Name and Open Cannabis Product Code of the brand that created this product.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Product.prototype.brand;

/**
 * Type of product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.type;

/**
 * Name and Open Cannabis Product Code of the strain for this product.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Product.prototype.strain;

/**
 * Description of the product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.description;

/**
 * URL for QR that leads to page on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.qr;

/**
 * URL for the product on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.url;

/**
 * URL for the main photo of the product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.image;

/**
 * URL for the PDF containing lab testing information for this product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.labTest;

/**
 * THC measurement for this product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.thc;

/**
 * CBD measurement for this product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.cbd;

/**
 * Cannabis measurement for this product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.cannabis;

/**
 * Hash oil measurement for this product.
 * @type {!string}
 * @export
 */
API.Client.Product.prototype.hashOil;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Product.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Product.prototype.updatedAt;

