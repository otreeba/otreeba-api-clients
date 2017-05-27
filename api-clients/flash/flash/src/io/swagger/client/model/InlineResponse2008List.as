package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Meta;

    public class InlineResponse2008List implements ListWrapper {
        // This declaration below of _inline_response_200_8_obj_class is to force flash compiler to include this class
        private var _inlineResponse2008_obj_class: io.swagger.client.model.InlineResponse2008 = null;
        [XmlElements(name="inlineResponse2008", type="io.swagger.client.model.InlineResponse2008")]
        public var inlineResponse2008: Array = new Array();

        public function getList(): Array{
            return inlineResponse2008;
        }

}

}
