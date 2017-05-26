package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2004Meta")]
    public class InlineResponse2004Meta {
        /* Gets the current list of Flowers. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2004Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
