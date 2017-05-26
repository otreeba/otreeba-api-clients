package io.swagger.client.model {

import io.swagger.client.model.InlineResponse20011Meta;

    [XmlRootNode(name="InlineResponse20011")]
    public class InlineResponse20011 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse20011Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse20011: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
