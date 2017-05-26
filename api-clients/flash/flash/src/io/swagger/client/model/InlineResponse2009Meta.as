package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2009Meta")]
    public class InlineResponse2009Meta {
        /* Gets the current list of Products for a Brand. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2009Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
