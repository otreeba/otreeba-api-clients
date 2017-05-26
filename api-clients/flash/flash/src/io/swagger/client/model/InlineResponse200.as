package io.swagger.client.model {

import io.swagger.client.model.InlineResponse200Meta;

    [XmlRootNode(name="InlineResponse200")]
    public class InlineResponse200 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse200Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse200: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
