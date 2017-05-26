package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse200MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse200Meta_obj_class: io.swagger.client.model.InlineResponse200Meta = null;
        [XmlElements(name="inlineResponse200Meta", type="io.swagger.client.model.InlineResponse200Meta")]
        public var inlineResponse200Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse200Meta;
        }

}

}
