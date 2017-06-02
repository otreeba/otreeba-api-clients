package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class ConditionList implements ListWrapper {
        // This declaration below of _Condition_obj_class is to force flash compiler to include this class
        private var _condition_obj_class: io.swagger.client.model.Condition = null;
        [XmlElements(name="condition", type="io.swagger.client.model.Condition")]
        public var condition: Array = new Array();

        public function getList(): Array{
            return condition;
        }

}

}
