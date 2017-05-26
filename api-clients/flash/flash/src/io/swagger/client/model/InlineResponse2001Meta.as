package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2001Meta")]
    public class InlineResponse2001Meta {
        /* Gets the current list of Seed Comapnies. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2001Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
