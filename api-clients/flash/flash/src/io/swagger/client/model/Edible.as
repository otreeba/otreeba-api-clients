package io.swagger.client.model {

import io.swagger.client.model.Object;

    [XmlRootNode(name="Edible")]
    public class Edible {
        /* Name of the edible. */
        [XmlElement(name="name")]
        public var name: String = null;
        /* Open Cannabis Product Code for the edible. */
        [XmlElement(name="ocpc")]
        public var ocpc: String = null;
        /* Name and Open Cannabis Product Code of the brand that created this edible. */
        [XmlElement(name="brand")]
        public var brand: Object = NaN;
        /* Type of edible. */
        [XmlElement(name="type")]
        public var type: String = null;
        /* Name and Open Cannabis Product Code of the strain for this edible. */
        [XmlElement(name="strain")]
        public var strain: Object = NaN;
        /* Description of the edible. */
        [XmlElement(name="description")]
        public var description: String = null;
        /* URL for QR that leads to page on Cannabis Reports. */
        [XmlElement(name="qr")]
        public var qr: String = null;
        /* URL for the edible on Cannabis Reports. */
        [XmlElement(name="url")]
        public var url: String = null;
        /* URL for the main photo of the edible. */
        [XmlElement(name="image")]
        public var image: String = null;
        /* URL for the PDF containing lab testing information for this edible. */
        [XmlElement(name="labTest")]
        public var labTest: String = null;
        /* THC measurement for this edible. */
        [XmlElement(name="thc")]
        public var thc: String = null;
        /* CBD measurement for this edible. */
        [XmlElement(name="cbd")]
        public var cbd: String = null;
        /* Cannabis measurement for this edible. */
        [XmlElement(name="cannabis")]
        public var cannabis: String = null;
        /* Hash oil measurement for this edible. */
        [XmlElement(name="hashOil")]
        public var hashOil: String = null;
        /* Date and time record was created, UTC. */
        [XmlElement(name="createdAt")]
        public var createdAt: Date = null;
        /* Date and time record was updated, UTC. */
        [XmlElement(name="updatedAt")]
        public var updatedAt: Date = null;

    public function toString(): String {
        var str: String = "Edible: ";
        str += " (name: " + name + ")";
        str += " (ocpc: " + ocpc + ")";
        str += " (brand: " + brand + ")";
        str += " (type: " + type + ")";
        str += " (strain: " + strain + ")";
        str += " (description: " + description + ")";
        str += " (qr: " + qr + ")";
        str += " (url: " + url + ")";
        str += " (image: " + image + ")";
        str += " (labTest: " + labTest + ")";
        str += " (thc: " + thc + ")";
        str += " (cbd: " + cbd + ")";
        str += " (cannabis: " + cannabis + ")";
        str += " (hashOil: " + hashOil + ")";
        str += " (createdAt: " + createdAt + ")";
        str += " (updatedAt: " + updatedAt + ")";
        return str;
    }

}

}
