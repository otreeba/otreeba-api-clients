package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2004MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_4_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2004Meta_obj_class: io.swagger.client.model.InlineResponse2004Meta = null;
        [XmlElements(name="inlineResponse2004Meta", type="io.swagger.client.model.InlineResponse2004Meta")]
        public var inlineResponse2004Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2004Meta;
        }

}

}
