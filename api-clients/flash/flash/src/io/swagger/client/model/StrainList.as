package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Object;

    public class StrainList implements ListWrapper {
        // This declaration below of _Strain_obj_class is to force flash compiler to include this class
        private var _strain_obj_class: io.swagger.client.model.Strain = null;
        [XmlElements(name="strain", type="io.swagger.client.model.Strain")]
        public var strain: Array = new Array();

        public function getList(): Array{
            return strain;
        }

}

}
