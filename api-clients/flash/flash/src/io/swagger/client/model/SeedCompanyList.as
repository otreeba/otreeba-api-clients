package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Object;

    public class SeedCompanyList implements ListWrapper {
        // This declaration below of _SeedCompany_obj_class is to force flash compiler to include this class
        private var _seedCompany_obj_class: io.swagger.client.model.SeedCompany = null;
        [XmlElements(name="seedCompany", type="io.swagger.client.model.SeedCompany")]
        public var seedCompany: Array = new Array();

        public function getList(): Array{
            return seedCompany;
        }

}

}
