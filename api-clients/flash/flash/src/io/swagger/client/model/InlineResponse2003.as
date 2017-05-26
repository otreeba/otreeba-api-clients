package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2003Meta;

    [XmlRootNode(name="InlineResponse2003")]
    public class InlineResponse2003 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2003Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2003: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
