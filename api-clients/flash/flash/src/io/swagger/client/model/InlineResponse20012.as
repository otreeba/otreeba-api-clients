package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse20012")]
    public class InlineResponse20012 {
        /* Gets the current list of Studies. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse20012: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
