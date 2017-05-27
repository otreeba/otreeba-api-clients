package io.swagger.client.model {

import io.swagger.client.model.Object;

    [XmlRootNode(name="Meta")]
    public class Meta {
        /* Information about the pagination of the data. */
        [XmlElement(name="pagination")]
        public var pagination: Object = NaN;

    public function toString(): String {
        var str: String = "Meta: ";
        str += " (pagination: " + pagination + ")";
        return str;
    }

}

}
