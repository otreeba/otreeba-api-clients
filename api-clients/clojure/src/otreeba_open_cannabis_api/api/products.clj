(ns otreeba-open-cannabis-api.api.products
  (:require [otreeba-open-cannabis-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-product-by-ocpc-with-http-info
  "Find product by Open Cannabis Product Code (OCPC).
  Returns a single product."
  [ocpc ]
  (call-api "/products/{ocpc}" :get
            {:path-params   {"ocpc" ocpc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-product-by-ocpc
  "Find product by Open Cannabis Product Code (OCPC).
  Returns a single product."
  [ocpc ]
  (:data (get-product-by-ocpc-with-http-info ocpc)))

(defn get-products-with-http-info
  "Get a list of all current products.
  Returns a paginated list of products."
  ([] (get-products-with-http-info nil))
  ([{:keys [page count sort ]}]
   (call-api "/products" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-products
  "Get a list of all current products.
  Returns a paginated list of products."
  ([] (get-products nil))
  ([optional-params]
   (:data (get-products-with-http-info optional-params))))

