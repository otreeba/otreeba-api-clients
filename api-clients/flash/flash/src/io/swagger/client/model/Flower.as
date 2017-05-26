package io.swagger.client.model {

import io.swagger.client.model.Object;

    [XmlRootNode(name="Flower")]
    public class Flower {
        /* Name of the flowers. */
        [XmlElement(name="name")]
        public var name: String = null;
        /* Open Cannabis Product Code for the flowers. */
        [XmlElement(name="ocpc")]
        public var ocpc: String = null;
        /* Name and Open Cannabis Product Code of the brand that created these flowers. */
        [XmlElement(name="brand")]
        public var brand: Object = NaN;
        /* Type of flowers. */
        [XmlElement(name="type")]
        public var type: String = null;
        /* Name and Open Cannabis Product Code of the strain for these flowers. */
        [XmlElement(name="strain")]
        public var strain: Object = NaN;
        /* Description of the flowers. */
        [XmlElement(name="description")]
        public var description: String = null;
        /* URL for QR that leads to page on Cannabis Reports. */
        [XmlElement(name="qr")]
        public var qr: String = null;
        /* URL for the flowers on Cannabis Reports. */
        [XmlElement(name="url")]
        public var url: String = null;
        /* URL for the main photo of the flowers. */
        [XmlElement(name="image")]
        public var image: String = null;
        /* URL for the PDF containing lab testing information for these flowers. */
        [XmlElement(name="labTest")]
        public var labTest: String = null;
        /* THC measurement for these flowers. */
        [XmlElement(name="thc")]
        public var thc: String = null;
        /* CBD measurement for these flowers. */
        [XmlElement(name="cbd")]
        public var cbd: String = null;
        /* Date and time record was created, UTC. */
        [XmlElement(name="createdAt")]
        public var createdAt: Date = null;
        /* Date and time record was updated, UTC. */
        [XmlElement(name="updatedAt")]
        public var updatedAt: Date = null;

    public function toString(): String {
        var str: String = "Flower: ";
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
        str += " (createdAt: " + createdAt + ")";
        str += " (updatedAt: " + updatedAt + ")";
        return str;
    }

}

}
