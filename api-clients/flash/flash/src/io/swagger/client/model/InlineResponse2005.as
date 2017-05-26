package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2005Meta;

    [XmlRootNode(name="InlineResponse2005")]
    public class InlineResponse2005 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2005Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2005: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
