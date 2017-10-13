(ns otreeba-open-cannabis-api.api.strains
  (:require [otreeba-open-cannabis-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-strain-by-ocpc-with-http-info
  "Find strain by Open Cannabis Product Code (OCPC).
  Returns a single strain."
  [ocpc ]
  (call-api "/strains/{ocpc}" :get
            {:path-params   {"ocpc" ocpc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn get-strain-by-ocpc
  "Find strain by Open Cannabis Product Code (OCPC).
  Returns a single strain."
  [ocpc ]
  (:data (get-strain-by-ocpc-with-http-info ocpc)))

(defn get-strains-with-http-info
  "Get a list of all current strains.
  Returns a paginated list of strains."
  ([] (get-strains-with-http-info nil))
  ([{:keys [page count sort ]}]
   (call-api "/strains" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-strains
  "Get a list of all current strains.
  Returns a paginated list of strains."
  ([] (get-strains nil))
  ([optional-params]
   (:data (get-strains-with-http-info optional-params))))

