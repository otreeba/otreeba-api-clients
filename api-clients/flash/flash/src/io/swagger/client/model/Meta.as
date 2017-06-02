package io.swagger.client.model {

import io.swagger.client.model.Pagination;

    [XmlRootNode(name="Meta")]
    public class Meta {
                [XmlElement(name="pagination")]
        public var pagination: Pagination = NaN;

    public function toString(): String {
        var str: String = "Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
