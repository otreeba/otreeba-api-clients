package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2001Meta;

    [XmlRootNode(name="InlineResponse2001")]
    public class InlineResponse2001 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2001Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2001: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
