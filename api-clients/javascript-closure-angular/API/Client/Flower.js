goog.provide('API.Client.Flower');

/**
 * @record
 */
API.Client.Flower = function() {}

/**
 * Name of the flowers.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.name;

/**
 * Open Cannabis Product Code for the flowers.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.ocpc;

/**
 * Name and Open Cannabis Product Code of the brand that created these flowers.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Flower.prototype.brand;

/**
 * Type of flowers.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.type;

/**
 * Name and Open Cannabis Product Code of the strain for these flowers.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Flower.prototype.strain;

/**
 * Description of the flowers.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.description;

/**
 * URL for QR that leads to page on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.qr;

/**
 * URL for the flowers on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.url;

/**
 * URL for the main photo of the flowers.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.image;

/**
 * URL for the PDF containing lab testing information for these flowers.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.labTest;

/**
 * THC measurement for these flowers.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.thc;

/**
 * CBD measurement for these flowers.
 * @type {!string}
 * @export
 */
API.Client.Flower.prototype.cbd;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Flower.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Flower.prototype.updatedAt;

