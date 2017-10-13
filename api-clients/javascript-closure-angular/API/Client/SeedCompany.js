goog.provide('API.Client.SeedCompany');

/**
 * @record
 */
API.Client.SeedCompany = function() {}

/**
 * Name of the seed company.
 * @type {!string}
 * @export
 */
API.Client.SeedCompany.prototype.name;

/**
 * Open Cannabis Product Code for the seed company.
 * @type {!string}
 * @export
 */
API.Client.SeedCompany.prototype.ocpc;

/**
 * Description of the seed company.
 * @type {!string}
 * @export
 */
API.Client.SeedCompany.prototype.description;

/**
 * URL for QR that leads to page on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.SeedCompany.prototype.qr;

/**
 * URL for seed company on Cannabis Reports.
 * @type {!string}
 * @export
 */
API.Client.SeedCompany.prototype.url;

/**
 * URL for logo for seed company.
 * @type {!string}
 * @export
 */
API.Client.SeedCompany.prototype.image;

/**
 * Object of countries that this seed company has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'}
 * @type {!API.Client.Object}
 * @export
 */
API.Client.SeedCompany.prototype.lineage;

/**
 * OCPCs of the strains from this seed company.
 * @type {!Array<!string>}
 * @export
 */
API.Client.SeedCompany.prototype.strains;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.SeedCompany.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.SeedCompany.prototype.updatedAt;

