(ns otreeba-open-cannabis-api.api.extracts
  (:require [otreeba-open-cannabis-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-extract-by-ocpc-with-http-info
  "Find extract by Open Cannabis Product Code (OCPC).
  Returns a single extract."
  [ocpc ]
  (call-api "/extracts/{ocpc}" :get
            {:path-params   {"ocpc" ocpc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-extract-by-ocpc
  "Find extract by Open Cannabis Product Code (OCPC).
  Returns a single extract."
  [ocpc ]
  (:data (get-extract-by-ocpc-with-http-info ocpc)))

(defn get-extracts-with-http-info
  "Get a list of all current extracts.
  Returns a paginated list of extracts."
  ([] (get-extracts-with-http-info nil))
  ([{:keys [page count sort ]}]
   (call-api "/extracts" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-extracts
  "Get a list of all current extracts.
  Returns a paginated list of extracts."
  ([] (get-extracts nil))
  ([optional-params]
   (:data (get-extracts-with-http-info optional-params))))

