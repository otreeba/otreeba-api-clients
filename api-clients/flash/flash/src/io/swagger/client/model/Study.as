package io.swagger.client.model {

import io.swagger.client.model.Condition;

    [XmlRootNode(name="Study")]
    public class Study {
        /* Name of the study. */
        [XmlElement(name="name")]
        public var name: String = null;
        /* Year of the study. */
        [XmlElement(name="year")]
        public var year: Number = NaN;
        /* Digital Object Identifier for the study. */
        [XmlElement(name="doi")]
        public var doi: String = null;
        /* PubMed ID for the study. */
        [XmlElement(name="pubMedId")]
        public var pubMedId: String = null;
        /* Slug based on the study name. */
        [XmlElement(name="slug")]
        public var slug: String = null;
        /* Key findings for the study. */
        [XmlElement(name="keyFindings")]
        public var keyFindings: String = null;
                // This declaration below of _conditions_obj_class is to force flash compiler to include this class
        private var _conditions_obj_class: Array = null;
        [XmlElementWrapper(name="conditions")]
        [XmlElements(name="conditions", type="Array")]
                public var conditions: Array = new Array();
        /* Date and time record was created, UTC. */
        [XmlElement(name="createdAt")]
        public var createdAt: Date = null;
        /* Date and time record was updated, UTC. */
        [XmlElement(name="updatedAt")]
        public var updatedAt: Date = null;

    public function toString(): String {
        var str: String = "Study: ";
        str += " (name: " + name + ")";
        str += " (year: " + year + ")";
        str += " (doi: " + doi + ")";
        str += " (pubMedId: " + pubMedId + ")";
        str += " (slug: " + slug + ")";
        str += " (keyFindings: " + keyFindings + ")";
        str += " (conditions: " + conditions + ")";
        str += " (createdAt: " + createdAt + ")";
        str += " (updatedAt: " + updatedAt + ")";
        return str;
    }

}

}
