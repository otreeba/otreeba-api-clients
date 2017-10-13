(ns otreeba-open-cannabis-api.api.studies
  (:require [otreeba-open-cannabis-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-studies-with-http-info
  "Get a list of all current studies.
  Returns a paginated list of studies."
  ([] (get-studies-with-http-info nil))
  ([{:keys [page count sort ]}]
   (call-api "/studies" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-studies
  "Get a list of all current studies.
  Returns a paginated list of studies."
  ([] (get-studies nil))
  ([optional-params]
   (:data (get-studies-with-http-info optional-params))))

(defn get-studies-by-condition-with-http-info
  "Get a list of all current studies for a given condition.
  Returns a paginated list of studies."
  ([condition-slug ] (get-studies-by-condition-with-http-info condition-slug nil))
  ([condition-slug {:keys [page count sort ]}]
   (call-api "/studies/conditions/{conditionSlug}" :get
             {:path-params   {"conditionSlug" condition-slug }
              :header-params {}
              :query-params  {"page" page "count" count "sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-studies-by-condition
  "Get a list of all current studies for a given condition.
  Returns a paginated list of studies."
  ([condition-slug ] (get-studies-by-condition condition-slug nil))
  ([condition-slug optional-params]
   (:data (get-studies-by-condition-with-http-info condition-slug optional-params))))

(defn get-studies-conditions-with-http-info
  "Get a list of all current conditions for studies.
  Returns a list of all current conditions for studies."
  ([] (get-studies-conditions-with-http-info nil))
  ([{:keys [sort ]}]
   (call-api "/studies/conditions" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"sort" sort }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-studies-conditions
  "Get a list of all current conditions for studies.
  Returns a list of all current conditions for studies."
  ([] (get-studies-conditions nil))
  ([optional-params]
   (:data (get-studies-conditions-with-http-info optional-params))))

(defn get-study-by-identifier-with-http-info
  "Find study by DOI, PubMed ID, or slug.
  Returns a single study."
  [identifier-type identifier ]
  (call-api "/studies/{identifierType}/{identifier}" :get
            {:path-params   {"identifierType" identifier-type "identifier" identifier }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn get-study-by-identifier
  "Find study by DOI, PubMed ID, or slug.
  Returns a single study."
  [identifier-type identifier ]
  (:data (get-study-by-identifier-with-http-info identifier-type identifier)))

