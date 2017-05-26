package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class BrandList implements ListWrapper {
        // This declaration below of _Brand_obj_class is to force flash compiler to include this class
        private var _brand_obj_class: io.swagger.client.model.Brand = null;
        [XmlElements(name="brand", type="io.swagger.client.model.Brand")]
        public var brand: Array = new Array();

        public function getList(): Array{
            return brand;
        }

}

}
