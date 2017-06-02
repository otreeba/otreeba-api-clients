goog.provide('API.Client.Condition');

/**
 * @record
 */
API.Client.Condition = function() {}

/**
 * Name of the condition.
 * @type {!string}
 * @export
 */
API.Client.Condition.prototype.name;

/**
 * Slug based on the condition name.
 * @type {!string}
 * @export
 */
API.Client.Condition.prototype.slug;

/**
 * Description of the condition.
 * @type {!string}
 * @export
 */
API.Client.Condition.prototype.description;

/**
 * Date and time record was created, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Condition.prototype.createdAt;

/**
 * Date and time record was updated, UTC.
 * @type {!Date}
 * @export
 */
API.Client.Condition.prototype.updatedAt;

