package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.InlineResponse2002Meta;

    public class InlineResponse2002List implements ListWrapper {
        // This declaration below of _inline_response_200_2_obj_class is to force flash compiler to include this class
        private var _inlineResponse2002_obj_class: io.swagger.client.model.InlineResponse2002 = null;
        [XmlElements(name="inlineResponse2002", type="io.swagger.client.model.InlineResponse2002")]
        public var inlineResponse2002: Array = new Array();

        public function getList(): Array{
            return inlineResponse2002;
        }

}

}
