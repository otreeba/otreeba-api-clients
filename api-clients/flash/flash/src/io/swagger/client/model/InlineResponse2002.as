package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2002")]
    public class InlineResponse2002 {
        /* Gets the current list of Edibles. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2002: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
