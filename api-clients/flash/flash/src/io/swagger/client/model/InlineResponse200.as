package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse200")]
    public class InlineResponse200 {
        /* Gets the current list of Seed Comapnies. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse200: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
