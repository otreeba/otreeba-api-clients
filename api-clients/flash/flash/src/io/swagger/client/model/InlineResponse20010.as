package io.swagger.client.model {

import io.swagger.client.model.InlineResponse20010Meta;

    [XmlRootNode(name="InlineResponse20010")]
    public class InlineResponse20010 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse20010Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse20010: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
