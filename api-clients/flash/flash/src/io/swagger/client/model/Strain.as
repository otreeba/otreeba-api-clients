package io.swagger.client.model {

import io.swagger.client.model.Object;

    [XmlRootNode(name="Strain")]
    public class Strain {
        /* Name of the strain. */
        [XmlElement(name="name")]
        public var name: String = null;
        /* Open Cannabis Product Code for the strain. */
        [XmlElement(name="ocpc")]
        public var ocpc: String = null;
        /* Name and Open Cannabis Product Code of the seed company that created the strain. */
        [XmlElement(name="seedCompany")]
        public var seedCompany: Object = NaN;
        /* URL for QR that leads to page on Cannabis Reports. */
        [XmlElement(name="qr")]
        public var qr: String = null;
        /* URL for strain on Cannabis Reports. */
        [XmlElement(name="url")]
        public var url: String = null;
        /* URL for the main photo of the strain. */
        [XmlElement(name="image")]
        public var image: String = null;
        /* Object of countries that this strain has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;} */
        [XmlElement(name="lineage")]
        public var lineage: Object = NaN;
        /* Names of the parents of the strains and their associated Open Cannabis Product Codes. */
        [XmlElement(name="genetics")]
        public var genetics: Object = NaN;
        /* Open Cannabis Product Codes of the children of this strain. */
        // This declaration below of _children_obj_class is to force flash compiler to include this class
        private var _children_obj_class: Array = null;
        [XmlElementWrapper(name="children")]
        [XmlElements(name="children", type="Array")]
                public var children: Array = new Array();
        /* Date and time record was created, UTC. */
        [XmlElement(name="createdAt")]
        public var createdAt: Date = null;
        /* Date and time record was updated, UTC. */
        [XmlElement(name="updatedAt")]
        public var updatedAt: Date = null;

    public function toString(): String {
        var str: String = "Strain: ";
        str += " (name: " + name + ")";
        str += " (ocpc: " + ocpc + ")";
        str += " (seedCompany: " + seedCompany + ")";
        str += " (qr: " + qr + ")";
        str += " (url: " + url + ")";
        str += " (image: " + image + ")";
        str += " (lineage: " + lineage + ")";
        str += " (genetics: " + genetics + ")";
        str += " (children: " + children + ")";
        str += " (createdAt: " + createdAt + ")";
        str += " (updatedAt: " + updatedAt + ")";
        return str;
    }

}

}
