package io.swagger.client.model {

import io.swagger.client.model.InlineResponse2008Meta;

    [XmlRootNode(name="InlineResponse2008")]
    public class InlineResponse2008 {
                [XmlElement(name="meta")]
        public var meta: InlineResponse2008Meta = NaN;

    public function toString(): String {
        var str: String = "InlineResponse2008: ";
        str += " (meta: " + meta + ")";
        return str;
    }

}

}
