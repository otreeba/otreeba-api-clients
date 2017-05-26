goog.provide('API.Client.Extract');

/**
 * @record
 */
API.Client.Extract = function() {}

/**
 * Name of the extract.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.name;

/**
 * Open Cannabis Product Code for the extract.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.ocpc;

/**
 * Name and Open Cannabis Product Code of the brand that created these extract.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Extract.prototype.brand;

/**
 * Type of extract.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.type;

/**
 * Name and Open Cannabis Product Code of the strain for these extract.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Extract.prototype.strain;

/**
 * Description of the extract.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.description;

/**
 * URL for QR that leads to page on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.qr;

/**
 * URL for the extract on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.url;

/**
 * URL for the main photo of the extract.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.image;

/**
 * URL for the PDF containing lab testing information for these extract.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.labTest;

/**
 * THC measurement for these extract.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.thc;

/**
 * CBD measurement for these extract.
 * @type {!string}
 * @export
 */
API.Client.Extract.prototype.cbd;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Extract.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Extract.prototype.updatedAt;

