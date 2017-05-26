package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class InlineResponse2008MetaList implements ListWrapper {
        // This declaration below of _inline_response_200_8_meta_obj_class is to force flash compiler to include this class
        private var _inlineResponse2008Meta_obj_class: io.swagger.client.model.InlineResponse2008Meta = null;
        [XmlElements(name="inlineResponse2008Meta", type="io.swagger.client.model.InlineResponse2008Meta")]
        public var inlineResponse2008Meta: Array = new Array();

        public function getList(): Array{
            return inlineResponse2008Meta;
        }

}

}
