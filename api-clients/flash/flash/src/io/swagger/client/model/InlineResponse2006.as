package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2006Meta;

    [XmlRootNode(name="InlineResponse2006")]
    public class InlineResponse2006 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2006Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2006: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
