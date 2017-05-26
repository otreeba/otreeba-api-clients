package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.InlineResponse2003Meta;

    public class InlineResponse2003List implements ListWrapper {
        // This declaration below of _inline_response_200_3_obj_class is to force flash compiler to include this class
        private var _inlineResponse2003_obj_class: io.swagger.client.model.InlineResponse2003 = null;
        [XmlElements(name="inlineResponse2003", type="io.swagger.client.model.InlineResponse2003")]
        public var inlineResponse2003: Array = new Array();

        public function getList(): Array{
            return inlineResponse2003;
        }

}

}
