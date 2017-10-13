package io.swagger.client.model {

import io.swagger.client.model.Object;

    [XmlRootNode(name="SeedCompany")]
    public class SeedCompany {
        /* Name of the seed company. */
        [XmlElement(name="name")]
        public var name: String = null;
        /* Open Cannabis Product Code for the seed company. */
        [XmlElement(name="ocpc")]
        public var ocpc: String = null;
        /* Description of the seed company. */
        [XmlElement(name="description")]
        public var description: String = null;
        /* URL for QR that leads to page on Cannabis Reports. */
        [XmlElement(name="qr")]
        public var qr: String = null;
        /* URL for seed company on Cannabis Reports. */
        [XmlElement(name="url")]
        public var url: String = null;
        /* URL for logo for seed company. */
        [XmlElement(name="image")]
        public var image: String = null;
        /* Object of countries that this seed company has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;} */
        [XmlElement(name="lineage")]
        public var lineage: Object = NaN;
        /* OCPCs of the strains from this seed company. */
        // This declaration below of _strains_obj_class is to force flash compiler to include this class
        private var _strains_obj_class: Array = null;
        [XmlElementWrapper(name="strains")]
        [XmlElements(name="strains", type="Array")]
                public var strains: Array = new Array();
        /* Date and time record was created, UTC. */
        [XmlElement(name="createdAt")]
        public var createdAt: Date = null;
        /* Date and time record was updated, UTC. */
        [XmlElement(name="updatedAt")]
        public var updatedAt: Date = null;

    public function toString(): String {
        var str: String = "SeedCompany: ";
        str += " (name: " + name + ")";
        str += " (ocpc: " + ocpc + ")";
        str += " (description: " + description + ")";
        str += " (qr: " + qr + ")";
        str += " (url: " + url + ")";
        str += " (image: " + image + ")";
        str += " (lineage: " + lineage + ")";
        str += " (strains: " + strains + ")";
        str += " (createdAt: " + createdAt + ")";
        str += " (updatedAt: " + updatedAt + ")";
        return str;
    }

}

}
