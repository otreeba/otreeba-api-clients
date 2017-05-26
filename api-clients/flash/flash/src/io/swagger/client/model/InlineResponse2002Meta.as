package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2002Meta")]
    public class InlineResponse2002Meta {
        /* Gets the current list of Edibles. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2002Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
