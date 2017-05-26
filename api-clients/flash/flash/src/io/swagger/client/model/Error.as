package io.swagger.client.model {


    [XmlRootNode(name="Error")]
    public class Error {
                [XmlElement(name="code")]
        public var code: Number = 0;
                [XmlElement(name="message")]
        public var message: String = null;

    public function toString(): String {
        var str: String = "Error: ";
        str += " (code: " + code + ")";
        str += " (message: " + message + ")";
        return str;
    }

}

}
