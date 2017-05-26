package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2007MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_7_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2007Meta_obj_class: io.swagger.client.model.InlineResponse2007Meta = null;
        [XmlElements(name="inlineResponse2007Meta", type="io.swagger.client.model.InlineResponse2007Meta")]
        public var inlineResponse2007Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2007Meta;
        }

}

}
