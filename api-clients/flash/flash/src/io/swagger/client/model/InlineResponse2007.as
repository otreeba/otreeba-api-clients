package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2007Meta;

    [XmlRootNode(name="InlineResponse2007")]
    public class InlineResponse2007 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2007Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2007: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
