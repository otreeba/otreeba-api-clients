package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2003Meta")]
    public class InlineResponse2003Meta {
        /* Gets the current list of Extracts. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2003Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
