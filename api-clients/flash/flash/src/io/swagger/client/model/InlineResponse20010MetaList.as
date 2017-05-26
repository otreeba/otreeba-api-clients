package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse20010MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_10_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse20010Meta_obj_class: io.swagger.client.model.InlineResponse20010Meta = null;
        [XmlElements(name="inlineResponse20010Meta", type="io.swagger.client.model.InlineResponse20010Meta")]
        public var inlineResponse20010Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse20010Meta;
        }

}

}
