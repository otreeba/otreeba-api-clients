package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2009Meta;

    [XmlRootNode(name="InlineResponse2009")]
    public class InlineResponse2009 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2009Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2009: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
