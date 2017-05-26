goog.provide('API.Client.Error');

/**
 * @record
 */
API.Client.Error = function() {}

/**
 * @type {!number}
 * @export
 */
API.Client.Error.prototype.code;

/**
 * @type {!string}
 * @export
 */
API.Client.Error.prototype.message;

