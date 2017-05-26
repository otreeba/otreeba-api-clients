package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2005MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_5_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2005Meta_obj_class: io.swagger.client.model.InlineResponse2005Meta = null;
        [XmlElements(name="inlineResponse2005Meta", type="io.swagger.client.model.InlineResponse2005Meta")]
        public var inlineResponse2005Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2005Meta;
        }

}

}
