package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse20010")]
    public class InlineResponse20010 {
        /* Gets the current list of Products. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse20010: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
