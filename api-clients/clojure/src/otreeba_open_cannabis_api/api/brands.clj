(ns otreeba-open-cannabis-api.api.brands
  (:require [otreeba-open-cannabis-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-brand-by-ocpc-with-http-info
  "Find brand by Open Cannabis Product Code (OCPC).
  Returns a single brand."
  [ocpc ]
  (call-api "/brands/{ocpc}" :get
            {:path-params   {"ocpc" ocpc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn get-brand-by-ocpc
  "Find brand by Open Cannabis Product Code (OCPC).
  Returns a single brand."
  [ocpc ]
  (:data (get-brand-by-ocpc-with-http-info ocpc)))

(defn get-brand-edibles-with-http-info
  "Get a list of all current edibles for the given brand.
  Returns a paginated list of edibles."
  ([ocpc ] (get-brand-edibles-with-http-info ocpc nil))
  ([ocpc {:keys [page count sort ]}]
   (call-api "/brands/{ocpc}/edibles" :get
             {:path-params   {"ocpc" ocpc }
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-brand-edibles
  "Get a list of all current edibles for the given brand.
  Returns a paginated list of edibles."
  ([ocpc ] (get-brand-edibles ocpc nil))
  ([ocpc optional-params]
   (:data (get-brand-edibles-with-http-info ocpc optional-params))))

(defn get-brand-extracts-with-http-info
  "Get a list of all current extracts for the given brand.
  Returns a paginated list of extracts."
  ([ocpc ] (get-brand-extracts-with-http-info ocpc nil))
  ([ocpc {:keys [page count sort ]}]
   (call-api "/brands/{ocpc}/extracts" :get
             {:path-params   {"ocpc" ocpc }
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-brand-extracts
  "Get a list of all current extracts for the given brand.
  Returns a paginated list of extracts."
  ([ocpc ] (get-brand-extracts ocpc nil))
  ([ocpc optional-params]
   (:data (get-brand-extracts-with-http-info ocpc optional-params))))

(defn get-brand-flowers-with-http-info
  "Get a list of all current flowers for the given brand.
  Returns a paginated list of flowers."
  ([ocpc ] (get-brand-flowers-with-http-info ocpc nil))
  ([ocpc {:keys [page count sort ]}]
   (call-api "/brands/{ocpc}/flowers" :get
             {:path-params   {"ocpc" ocpc }
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-brand-flowers
  "Get a list of all current flowers for the given brand.
  Returns a paginated list of flowers."
  ([ocpc ] (get-brand-flowers ocpc nil))
  ([ocpc optional-params]
   (:data (get-brand-flowers-with-http-info ocpc optional-params))))

(defn get-brand-products-with-http-info
  "Get a list of all current products for the given brand.
  Returns a paginated list of products."
  ([ocpc ] (get-brand-products-with-http-info ocpc nil))
  ([ocpc {:keys [page count sort ]}]
   (call-api "/brands/{ocpc}/products" :get
             {:path-params   {"ocpc" ocpc }
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-brand-products
  "Get a list of all current products for the given brand.
  Returns a paginated list of products."
  ([ocpc ] (get-brand-products ocpc nil))
  ([ocpc optional-params]
   (:data (get-brand-products-with-http-info ocpc optional-params))))

(defn get-brands-with-http-info
  "Get a list of all current brands.
  Returns a paginated list of brands."
  ([] (get-brands-with-http-info nil))
  ([{:keys [page count sort ]}]
   (call-api "/brands" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-brands
  "Get a list of all current brands.
  Returns a paginated list of brands."
  ([] (get-brands nil))
  ([optional-params]
   (:data (get-brands-with-http-info optional-params))))

