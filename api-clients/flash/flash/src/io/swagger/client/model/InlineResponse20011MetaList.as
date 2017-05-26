package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse20011MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_11_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse20011Meta_obj_class: io.swagger.client.model.InlineResponse20011Meta = null;
        [XmlElements(name="inlineResponse20011Meta", type="io.swagger.client.model.InlineResponse20011Meta")]
        public var inlineResponse20011Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse20011Meta;
        }

}

}
