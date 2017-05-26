package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Object;

    public class ExtractList implements ListWrapper {
        // This declaration below of _Extract_obj_class is to force flash compiler to include this class
        private var _extract_obj_class: io.swagger.client.model.Extract = null;
        [XmlElements(name="extract", type="io.swagger.client.model.Extract")]
        public var extract: Array = new Array();

        public function getList(): Array{
            return extract;
        }

}

}
