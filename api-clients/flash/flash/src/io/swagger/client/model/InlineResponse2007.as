package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2007")]
    public class InlineResponse2007 {
        /* Gets the current list of Extracts for a Brand. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2007: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
