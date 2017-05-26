package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse200Meta")]
    public class InlineResponse200Meta {
        /* Gets the Strains for a Seed Company listing from a given OCPC. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse200Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
