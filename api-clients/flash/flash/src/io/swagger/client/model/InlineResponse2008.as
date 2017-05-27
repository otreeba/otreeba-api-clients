package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse2008")]
    public class InlineResponse2008 {
        /* Gets the current list of Edibles for a Brand. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2008: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
