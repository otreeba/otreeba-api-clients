package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse20011Meta")]
    public class InlineResponse20011Meta {
        /* Gets the current list of Strains. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse20011Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
