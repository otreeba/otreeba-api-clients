package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Condition;

    public class StudyList implements ListWrapper {
        // This declaration below of _Study_obj_class is to force flash compiler to include this class
        private var _study_obj_class: io.swagger.client.model.Study = null;
        [XmlElements(name="study", type="io.swagger.client.model.Study")]
        public var study: Array = new Array();

        public function getList(): Array{
            return study;
        }

}

}
