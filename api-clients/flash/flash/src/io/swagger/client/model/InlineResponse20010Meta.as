package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse20010Meta")]
    public class InlineResponse20010Meta {
        /* Gets the current list of Products. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse20010Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
