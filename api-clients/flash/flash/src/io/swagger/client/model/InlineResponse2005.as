package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2005")]
    public class InlineResponse2005 {
        /* Gets the current list of Brands. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2005: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
