package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2002MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_2_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2002Meta_obj_class: io.swagger.client.model.InlineResponse2002Meta = null;
        [XmlElements(name="inlineResponse2002Meta", type="io.swagger.client.model.InlineResponse2002Meta")]
        public var inlineResponse2002Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2002Meta;
        }

}

}
