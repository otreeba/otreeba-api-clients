package io.swagger.client.model {


    [XmlRootNode(name="Condition")]
    public class Condition {
        /* Name of the condition. */
        [XmlElement(name="name")]
        public var name: String = null;
        /* Slug based on the condition name. */
        [XmlElement(name="slug")]
        public var slug: String = null;
        /* Description of the condition. */
        [XmlElement(name="description")]
        public var description: String = null;
        /* Date and time record was created, UTC. */
        [XmlElement(name="createdAt")]
        public var createdAt: Date = null;
        /* Date and time record was updated, UTC. */
        [XmlElement(name="updatedAt")]
        public var updatedAt: Date = null;

    public function toString(): String {
        var str: String = "Condition: ";
        str += " (name: " + name + ")";
        str += " (slug: " + slug + ")";
        str += " (description: " + description + ")";
        str += " (createdAt: " + createdAt + ")";
        str += " (updatedAt: " + updatedAt + ")";
        return str;
    }

}

}
