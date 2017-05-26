package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2006Meta")]
    public class InlineResponse2006Meta {
        /* Gets the current list of Flowers for a Brand. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2006Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
