package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2009")]
    public class InlineResponse2009 {
        /* Gets the current list of Products for a Brand. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2009: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
