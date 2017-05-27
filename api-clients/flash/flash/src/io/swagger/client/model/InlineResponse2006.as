package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2006")]
    public class InlineResponse2006 {
        /* Gets the current list of Flowers for a Brand. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2006: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
