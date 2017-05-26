package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2002Meta;

    [XmlRootNode(name="InlineResponse2002")]
    public class InlineResponse2002 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2002Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2002: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
