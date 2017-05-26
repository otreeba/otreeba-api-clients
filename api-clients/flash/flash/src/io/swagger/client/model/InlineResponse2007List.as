package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.InlineResponse2007Meta;

    public class InlineResponse2007List implements ListWrapper {
        // This declaration below of _inline_response_200_7_obj_class is to force flash compiler to include this class
        private var _inlineResponse2007_obj_class: io.swagger.client.model.InlineResponse2007 = null;
        [XmlElements(name="inlineResponse2007", type="io.swagger.client.model.InlineResponse2007")]
        public var inlineResponse2007: Array = new Array();

        public function getList(): Array{
            return inlineResponse2007;
        }

}

}
