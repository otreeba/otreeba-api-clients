package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Object;

    public class FlowerList implements ListWrapper {
        // This declaration below of _Flower_obj_class is to force flash compiler to include this class
        private var _flower_obj_class: io.swagger.client.model.Flower = null;
        [XmlElements(name="flower", type="io.swagger.client.model.Flower")]
        public var flower: Array = new Array();

        public function getList(): Array{
            return flower;
        }

}

}
