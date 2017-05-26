package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class ErrorList implements ListWrapper {
        // This declaration below of _Error_obj_class is to force flash compiler to include this class
        private var _error_obj_class: io.swagger.client.model.Error = null;
        [XmlElements(name="error", type="io.swagger.client.model.Error")]
        public var error: Array = new Array();

        public function getList(): Array{
            return error;
        }

}

}
