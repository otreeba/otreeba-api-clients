package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse20011")]
    public class InlineResponse20011 {
        /* Gets the current list of Strains. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse20011: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
