goog.provide('API.Client.Edible');

/**
 * @record
 */
API.Client.Edible = function() {}

/**
 * Name of the edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.name;

/**
 * Open Cannabis Product Code for the edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.ocpc;

/**
 * Name and Open Cannabis Product Code of the brand that created this edible.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Edible.prototype.brand;

/**
 * Type of edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.type;

/**
 * Name and Open Cannabis Product Code of the strain for this edible.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Edible.prototype.strain;

/**
 * Description of the edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.description;

/**
 * URL for QR that leads to page on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.qr;

/**
 * URL for the edible on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.url;

/**
 * URL for the main photo of the edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.image;

/**
 * URL for the PDF containing lab testing information for this edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.labTest;

/**
 * THC measurement for this edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.thc;

/**
 * CBD measurement for this edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.cbd;

/**
 * Cannabis measurement for this edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.cannabis;

/**
 * Hash oil measurement for this edible.
 * @type {!string}
 * @export
 */
API.Client.Edible.prototype.hashOil;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Edible.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Edible.prototype.updatedAt;

