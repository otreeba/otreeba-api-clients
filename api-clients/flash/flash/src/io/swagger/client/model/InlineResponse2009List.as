package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.InlineResponse2009Meta;

    public class InlineResponse2009List implements ListWrapper {
        // This declaration below of _inline_response_200_9_obj_class is to force flash compiler to include this class
        private var _inlineResponse2009_obj_class: io.swagger.client.model.InlineResponse2009 = null;
        [XmlElements(name="inlineResponse2009", type="io.swagger.client.model.InlineResponse2009")]
        public var inlineResponse2009: Array = new Array();

        public function getList(): Array{
            return inlineResponse2009;
        }

}

}
