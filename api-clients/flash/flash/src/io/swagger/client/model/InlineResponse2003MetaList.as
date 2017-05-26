package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2003MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_3_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2003Meta_obj_class: io.swagger.client.model.InlineResponse2003Meta = null;
        [XmlElements(name="inlineResponse2003Meta", type="io.swagger.client.model.InlineResponse2003Meta")]
        public var inlineResponse2003Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2003Meta;
        }

}

}
