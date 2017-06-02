package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pagination;

    public class MetaList implements ListWrapper {
        // This declaration below of _Meta_obj_class is to force flash compiler to include this class
        private var _meta_obj_class: io.swagger.client.model.Meta = null;
        [XmlElements(name="meta", type="io.swagger.client.model.Meta")]
        public var meta: Array = new Array();

        public function getList(): Array{
            return meta;
        }

}

}
