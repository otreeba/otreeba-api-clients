package io.swagger.client.model {

import io.swagger.client.model.Meta;

    [XmlRootNode(name="InlineResponse20013")]
    public class InlineResponse20013 {
        /* Gets the current list of Studies for a given Condition. */
        [XmlElement(name="meta")]
        public var meta: Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse20013: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
