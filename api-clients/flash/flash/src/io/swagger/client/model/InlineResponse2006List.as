package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.InlineResponse2006Meta;

    public class InlineResponse2006List implements ListWrapper {
        // This declaration below of _inline_response_200_6_obj_class is to force flash compiler to include this class
        private var _inlineResponse2006_obj_class: io.swagger.client.model.InlineResponse2006 = null;
        [XmlElements(name="inlineResponse2006", type="io.swagger.client.model.InlineResponse2006")]
        public var inlineResponse2006: Array = new Array();

        public function getList(): Array{
            return inlineResponse2006;
        }

}

}
