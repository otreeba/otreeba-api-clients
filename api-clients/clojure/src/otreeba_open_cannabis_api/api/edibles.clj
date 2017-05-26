(ns otreeba-open-cannabis-api.api.edibles
  (:require [otreeba-open-cannabis-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-edible-by-ocpc-with-http-info
  "Find edible by Open Cannabis Product Code (OCPC).
  Returns a single edible."
  [ocpc ]
  (call-api "/edibles/{ocpc}" :get
            {:path-params   {"ocpc" ocpc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-edible-by-ocpc
  "Find edible by Open Cannabis Product Code (OCPC).
  Returns a single edible."
  [ocpc ]
  (:data (get-edible-by-ocpc-with-http-info ocpc)))

(defn get-edibles-with-http-info
  "Get a list of all current edibles.
  Returns a paginated list of edibles."
  ([] (get-edibles-with-http-info nil))
  ([{:keys [page count sort ]}]
   (call-api "/edibles" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-edibles
  "Get a list of all current edibles.
  Returns a paginated list of edibles."
  ([] (get-edibles nil))
  ([optional-params]
   (:data (get-edibles-with-http-info optional-params))))

