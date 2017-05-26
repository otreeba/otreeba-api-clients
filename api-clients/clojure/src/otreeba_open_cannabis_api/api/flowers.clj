(ns otreeba-open-cannabis-api.api.flowers
  (:require [otreeba-open-cannabis-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-flower-by-ocpc-with-http-info
  "Find flower by Open Cannabis Product Code (OCPC).
  Returns a single flower."
  [ocpc ]
  (call-api "/flowers/{ocpc}" :get
            {:path-params   {"ocpc" ocpc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-flower-by-ocpc
  "Find flower by Open Cannabis Product Code (OCPC).
  Returns a single flower."
  [ocpc ]
  (:data (get-flower-by-ocpc-with-http-info ocpc)))

(defn get-flowers-with-http-info
  "Get a list of all current flowers.
  Returns a paginated list of flowers."
  ([] (get-flowers-with-http-info nil))
  ([{:keys [page count sort ]}]
   (call-api "/flowers" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-flowers
  "Get a list of all current flowers.
  Returns a paginated list of flowers."
  ([] (get-flowers nil))
  ([optional-params]
   (:data (get-flowers-with-http-info optional-params))))

