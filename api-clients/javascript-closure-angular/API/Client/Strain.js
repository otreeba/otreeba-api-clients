goog.provide('API.Client.Strain');

/**
 * @record
 */
API.Client.Strain = function() {}

/**
 * Name of the strain.
 * @type {!string}
 * @export
 */
API.Client.Strain.prototype.name;

/**
 * Open Cannabis Product Code for the strain.
 * @type {!string}
 * @export
 */
API.Client.Strain.prototype.ocpc;

/**
 * Name and Open Cannabis Product Code of the seed company that created the strain.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Strain.prototype.seedCompany;

/**
 * URL for QR that leads to page on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Strain.prototype.qr;

/**
 * URL for strain on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.Strain.prototype.url;

/**
 * URL for the main photo of the strain.
 * @type {!string}
 * @export
 */
API.Client.Strain.prototype.image;

/**
 * Object of countries that this strain has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Strain.prototype.lineage;

/**
 * Names of the parents of the strains and their associated Open Cannabis Product Codes.
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Strain.prototype.genetics;

/**
 * Open Cannabis Product Codes of the children of this strain.
 * @type {!Array<!string>}
 * @export
 */
API.Client.Strain.prototype.children;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Strain.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Strain.prototype.updatedAt;

