package io.swagger.client.model {


    [XmlRootNode(name="Brand")]
    public class Brand {
        /* Name of the brand. */
        [XmlElement(name="name")]
        public var name: String = null;
        /* Open Cannabis Product Code for the brand. */
        [XmlElement(name="ocpc")]
        public var ocpc: String = null;
        /* URL for brand on Otreeba. */
        [XmlElement(name="link")]
        public var link: String = null;
        /* URL for QR that leads to page on Cannabis Reports. */
        [XmlElement(name="qr")]
        public var qr: String = null;
        /* URL for brand on Cannabis Reports. */
        [XmlElement(name="url")]
        public var url: String = null;
        /* URL for logo for brand. */
        [XmlElement(name="image")]
        public var image: String = null;
        /* OCPCs of the flowers from this brand. */
        // This declaration below of _flowers_obj_class is to force flash compiler to include this class
        private var _flowers_obj_class: Array = null;
        [XmlElementWrapper(name="flowers")]
        [XmlElements(name="flowers", type="Array")]
                public var flowers: Array = new Array();
        /* OCPCs of the extracts from this brand. */
        // This declaration below of _extracts_obj_class is to force flash compiler to include this class
        private var _extracts_obj_class: Array = null;
        [XmlElementWrapper(name="extracts")]
        [XmlElements(name="extracts", type="Array")]
                public var extracts: Array = new Array();
        /* OCPCs of the edibles from this brand. */
        // This declaration below of _edibles_obj_class is to force flash compiler to include this class
        private var _edibles_obj_class: Array = null;
        [XmlElementWrapper(name="edibles")]
        [XmlElements(name="edibles", type="Array")]
                public var edibles: Array = new Array();
        /* OCPCs of the products from this brand. */
        // This declaration below of _products_obj_class is to force flash compiler to include this class
        private var _products_obj_class: Array = null;
        [XmlElementWrapper(name="products")]
        [XmlElements(name="products", type="Array")]
                public var products: Array = new Array();
        /* Date and time record was created, UTC. */
        [XmlElement(name="createdAt")]
        public var createdAt: Date = null;
        /* Date and time record was updated, UTC. */
        [XmlElement(name="updatedAt")]
        public var updatedAt: Date = null;

    public function toString(): String {
        var str: String = "Brand: ";
        str += " (name: " + name + ")";
        str += " (ocpc: " + ocpc + ")";
        str += " (link: " + link + ")";
        str += " (qr: " + qr + ")";
        str += " (url: " + url + ")";
        str += " (image: " + image + ")";
        str += " (flowers: " + flowers + ")";
        str += " (extracts: " + extracts + ")";
        str += " (edibles: " + edibles + ")";
        str += " (products: " + products + ")";
        str += " (createdAt: " + createdAt + ")";
        str += " (updatedAt: " + updatedAt + ")";
        return str;
    }

}

}
