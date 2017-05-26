package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2009MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_9_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2009Meta_obj_class: io.swagger.client.model.InlineResponse2009Meta = null;
        [XmlElements(name="inlineResponse2009Meta", type="io.swagger.client.model.InlineResponse2009Meta")]
        public var inlineResponse2009Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2009Meta;
        }

}

}
