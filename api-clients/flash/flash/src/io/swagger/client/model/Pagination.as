package io.swagger.client.model {

import io.swagger.client.model.Object;

    [XmlRootNode(name="Pagination")]
    public class Pagination {
        /* Total number of results available. */
        [XmlElement(name="total")]
        public var total: Number = NaN;
        /* Number of results to return. Default 10. Max 50. */
        [XmlElement(name="count")]
        public var count: Number = NaN;
        /* Number of results per page. */
        [XmlElement(name="per_page")]
        public var perPage: Number = NaN;
        /* Page of results. */
        [XmlElement(name="current_page")]
        public var currentPage: Number = NaN;
        /* Total number of pages of results. */
        [XmlElement(name="total_pages")]
        public var totalPages: Number = NaN;
        /* Links to the previous and/or next pages of results. */
        [XmlElement(name="links")]
        public var links: Object = NaN;

    public function toString(): String {
        var str: String = "Pagination: ";
        str += " (total: " + total + ")";
        str += " (count: " + count + ")";
        str += " (perPage: " + perPage + ")";
        str += " (currentPage: " + currentPage + ")";
        str += " (totalPages: " + totalPages + ")";
        str += " (links: " + links + ")";
        return str;
    }

}

}
