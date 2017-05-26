package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2007Meta")]
    public class InlineResponse2007Meta {
        /* Gets the current list of Extracts for a Brand. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2007Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
