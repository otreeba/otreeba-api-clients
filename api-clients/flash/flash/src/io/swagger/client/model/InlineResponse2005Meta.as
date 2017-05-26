package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2005Meta")]
    public class InlineResponse2005Meta {
        /* Gets the current list of Brands. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2005Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
