package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Object;

    public class EdibleList implements ListWrapper {
        // This declaration below of _Edible_obj_class is to force flash compiler to include this class
        private var _edible_obj_class: io.swagger.client.model.Edible = null;
        [XmlElements(name="edible", type="io.swagger.client.model.Edible")]
        public var edible: Array = new Array();

        public function getList(): Array{
            return edible;
        }

}

}
