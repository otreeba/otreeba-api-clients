package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2006MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_6_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2006Meta_obj_class: io.swagger.client.model.InlineResponse2006Meta = null;
        [XmlElements(name="inlineResponse2006Meta", type="io.swagger.client.model.InlineResponse2006Meta")]
        public var inlineResponse2006Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2006Meta;
        }

}

}
