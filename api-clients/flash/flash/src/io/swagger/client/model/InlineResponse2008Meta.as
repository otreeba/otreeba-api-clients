package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="InlineResponse2008Meta")]
    public class InlineResponse2008Meta {
        /* Gets the current list of Edibles for a Brand. */
        [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2008Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
