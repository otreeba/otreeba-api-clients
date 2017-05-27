package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2003")]
    public class InlineResponse2003 {
        /* Gets the current list of Extracts. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2003: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
