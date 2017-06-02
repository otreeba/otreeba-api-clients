goog.provide('API.Client.Study');

/**
 * @record
 */
API.Client.Study = function() {}

/**
 * Name of the study.
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.name;

/**
 * Year of the study.
 * @type {!number}
 * @export
 */
API.Client.Study.prototype.year;

/**
 * Digital Object Identifier for the study.
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.doi;

/**
 * PubMed ID for the study.
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.pubMedId;

/**
 * Slug based on the study name.
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.slug;

/**
 * Key findings for the study.
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.keyFindings;

/**
 * @type {!Array<!API.Client.Condition>}
 * @export
 */
API.Client.Study.prototype.conditions;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Study.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Study.prototype.updatedAt;

