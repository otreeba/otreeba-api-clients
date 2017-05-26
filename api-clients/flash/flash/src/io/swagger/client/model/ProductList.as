package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Object;

    public class ProductList implements ListWrapper {
        // This declaration below of _Product_obj_class is to force flash compiler to include this class
        private var _product_obj_class: io.swagger.client.model.Product = null;
        [XmlElements(name="product", type="io.swagger.client.model.Product")]
        public var product: Array = new Array();

        public function getList(): Array{
            return product;
        }

}

}
