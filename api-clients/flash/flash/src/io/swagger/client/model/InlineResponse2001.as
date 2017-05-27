package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2001")]
    public class InlineResponse2001 {
        /* Gets the current list of Seed Comapnies. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2001: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
