(ns otreeba-open-cannabis-api.api.seed-companies
  (:require [otreeba-open-cannabis-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-seed-companies-with-http-info
  "Get a list of all current seed companies.
  Returns a paginated list of seed companies."
  ([] (get-seed-companies-with-http-info nil))
  ([{:keys [page count sort ]}]
   (call-api "/seed-companies" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-seed-companies
  "Get a list of all current seed companies.
  Returns a paginated list of seed companies."
  ([] (get-seed-companies nil))
  ([optional-params]
   (:data (get-seed-companies-with-http-info optional-params))))

(defn get-seed-company-by-ocpc-with-http-info
  "Find seed company by Open Cannabis Product Code (OCPC).
  Returns a single seed company."
  [ocpc ]
  (call-api "/seed-companies/{ocpc}" :get
            {:path-params   {"ocpc" ocpc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn get-seed-company-by-ocpc
  "Find seed company by Open Cannabis Product Code (OCPC).
  Returns a single seed company."
  [ocpc ]
  (:data (get-seed-company-by-ocpc-with-http-info ocpc)))

(defn get-seed-company-strains-by-ocpc-with-http-info
  "Find strains for a seed company by Open Cannabis Product Code (OCPC).
  Returns a paginated list of strains for a single seed company."
  ([ocpc ] (get-seed-company-strains-by-ocpc-with-http-info ocpc nil))
  ([ocpc {:keys [page count ]}]
   (call-api "/seed-companies/{ocpc}/strains" :get
             {:path-params   {"ocpc" ocpc }
              :header-params {}
              :query-params  {"page" page "count" count }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-seed-company-strains-by-ocpc
  "Find strains for a seed company by Open Cannabis Product Code (OCPC).
  Returns a paginated list of strains for a single seed company."
  ([ocpc ] (get-seed-company-strains-by-ocpc ocpc nil))
  ([ocpc optional-params]
   (:data (get-seed-company-strains-by-ocpc-with-http-info ocpc optional-params))))

