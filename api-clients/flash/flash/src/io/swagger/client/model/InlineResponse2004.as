package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2004")]
    public class InlineResponse2004 {
        /* Gets the current list of Flowers. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2004: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
