package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2004Meta;

    [XmlRootNode(name="InlineResponse2004")]
    public class InlineResponse2004 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2004Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2004: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
