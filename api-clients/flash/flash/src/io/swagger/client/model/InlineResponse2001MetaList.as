package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2001MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_1_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2001Meta_obj_class: io.swagger.client.model.InlineResponse2001Meta = null;
        [XmlElements(name="inlineResponse2001Meta", type="io.swagger.client.model.InlineResponse2001Meta")]
        public var inlineResponse2001Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2001Meta;
        }

}

}
