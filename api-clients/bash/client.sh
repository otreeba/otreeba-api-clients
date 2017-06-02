#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! swagger-codegen (https://github.com/swagger-api/swagger-codegen)
# ! FROM SWAGGER SPECIFICATION IN JSON.
# !
# ! Generated on: 2017-06-02T19:53:17.447Z
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for Otreeba Open Cannabis API.
#
# LICENSE:
# https://creativecommons.org/licenses/by/4.0/
#
# CONTACT:
# api@otreeba.com
#
# MORE INFORMATION:
# https://otreeba.com
#

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=`basename "$0"`

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# This array stores the minimum number of required occurences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurences
operation_parameters_minimum_occurences["getBrandByOcpc:::ocpc"]=1
operation_parameters_minimum_occurences["getBrandEdibles:::ocpc"]=1
operation_parameters_minimum_occurences["getBrandEdibles:::page"]=0
operation_parameters_minimum_occurences["getBrandEdibles:::count"]=0
operation_parameters_minimum_occurences["getBrandEdibles:::sort"]=0
operation_parameters_minimum_occurences["getBrandExtracts:::ocpc"]=1
operation_parameters_minimum_occurences["getBrandExtracts:::page"]=0
operation_parameters_minimum_occurences["getBrandExtracts:::count"]=0
operation_parameters_minimum_occurences["getBrandExtracts:::sort"]=0
operation_parameters_minimum_occurences["getBrandFlowers:::ocpc"]=1
operation_parameters_minimum_occurences["getBrandFlowers:::page"]=0
operation_parameters_minimum_occurences["getBrandFlowers:::count"]=0
operation_parameters_minimum_occurences["getBrandFlowers:::sort"]=0
operation_parameters_minimum_occurences["getBrandProducts:::ocpc"]=1
operation_parameters_minimum_occurences["getBrandProducts:::page"]=0
operation_parameters_minimum_occurences["getBrandProducts:::count"]=0
operation_parameters_minimum_occurences["getBrandProducts:::sort"]=0
operation_parameters_minimum_occurences["getBrands:::page"]=0
operation_parameters_minimum_occurences["getBrands:::count"]=0
operation_parameters_minimum_occurences["getBrands:::sort"]=0
operation_parameters_minimum_occurences["getEdibleByOcpc:::ocpc"]=1
operation_parameters_minimum_occurences["getEdibles:::page"]=0
operation_parameters_minimum_occurences["getEdibles:::count"]=0
operation_parameters_minimum_occurences["getEdibles:::sort"]=0
operation_parameters_minimum_occurences["getExtractByOcpc:::ocpc"]=1
operation_parameters_minimum_occurences["getExtracts:::page"]=0
operation_parameters_minimum_occurences["getExtracts:::count"]=0
operation_parameters_minimum_occurences["getExtracts:::sort"]=0
operation_parameters_minimum_occurences["getFlowerByOcpc:::ocpc"]=1
operation_parameters_minimum_occurences["getFlowers:::page"]=0
operation_parameters_minimum_occurences["getFlowers:::count"]=0
operation_parameters_minimum_occurences["getFlowers:::sort"]=0
operation_parameters_minimum_occurences["getProductByOcpc:::ocpc"]=1
operation_parameters_minimum_occurences["getProducts:::page"]=0
operation_parameters_minimum_occurences["getProducts:::count"]=0
operation_parameters_minimum_occurences["getProducts:::sort"]=0
operation_parameters_minimum_occurences["getSeedCompanies:::page"]=0
operation_parameters_minimum_occurences["getSeedCompanies:::count"]=0
operation_parameters_minimum_occurences["getSeedCompanies:::sort"]=0
operation_parameters_minimum_occurences["getSeedCompanyByOcpc:::ocpc"]=1
operation_parameters_minimum_occurences["getSeedCompanyStrainsByOcpc:::ocpc"]=1
operation_parameters_minimum_occurences["getSeedCompanyStrainsByOcpc:::page"]=0
operation_parameters_minimum_occurences["getSeedCompanyStrainsByOcpc:::count"]=0
operation_parameters_minimum_occurences["getStrainByOcpc:::ocpc"]=1
operation_parameters_minimum_occurences["getStrains:::page"]=0
operation_parameters_minimum_occurences["getStrains:::count"]=0
operation_parameters_minimum_occurences["getStrains:::sort"]=0
operation_parameters_minimum_occurences["getStudies:::page"]=0
operation_parameters_minimum_occurences["getStudies:::count"]=0
operation_parameters_minimum_occurences["getStudies:::sort"]=0
operation_parameters_minimum_occurences["getStudiesByCondition:::conditionSlug"]=1
operation_parameters_minimum_occurences["getStudiesByCondition:::page"]=0
operation_parameters_minimum_occurences["getStudiesByCondition:::count"]=0
operation_parameters_minimum_occurences["getStudiesByCondition:::sort"]=0
operation_parameters_minimum_occurences["getStudiesConditions:::sort"]=0
operation_parameters_minimum_occurences["getStudyByIdentifier:::identifierType"]=1
operation_parameters_minimum_occurences["getStudyByIdentifier:::identifier"]=1

##
# This array stores the maximum number of allowed occurences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurences
operation_parameters_maximum_occurences["getBrandByOcpc:::ocpc"]=0
operation_parameters_maximum_occurences["getBrandEdibles:::ocpc"]=0
operation_parameters_maximum_occurences["getBrandEdibles:::page"]=0
operation_parameters_maximum_occurences["getBrandEdibles:::count"]=0
operation_parameters_maximum_occurences["getBrandEdibles:::sort"]=0
operation_parameters_maximum_occurences["getBrandExtracts:::ocpc"]=0
operation_parameters_maximum_occurences["getBrandExtracts:::page"]=0
operation_parameters_maximum_occurences["getBrandExtracts:::count"]=0
operation_parameters_maximum_occurences["getBrandExtracts:::sort"]=0
operation_parameters_maximum_occurences["getBrandFlowers:::ocpc"]=0
operation_parameters_maximum_occurences["getBrandFlowers:::page"]=0
operation_parameters_maximum_occurences["getBrandFlowers:::count"]=0
operation_parameters_maximum_occurences["getBrandFlowers:::sort"]=0
operation_parameters_maximum_occurences["getBrandProducts:::ocpc"]=0
operation_parameters_maximum_occurences["getBrandProducts:::page"]=0
operation_parameters_maximum_occurences["getBrandProducts:::count"]=0
operation_parameters_maximum_occurences["getBrandProducts:::sort"]=0
operation_parameters_maximum_occurences["getBrands:::page"]=0
operation_parameters_maximum_occurences["getBrands:::count"]=0
operation_parameters_maximum_occurences["getBrands:::sort"]=0
operation_parameters_maximum_occurences["getEdibleByOcpc:::ocpc"]=0
operation_parameters_maximum_occurences["getEdibles:::page"]=0
operation_parameters_maximum_occurences["getEdibles:::count"]=0
operation_parameters_maximum_occurences["getEdibles:::sort"]=0
operation_parameters_maximum_occurences["getExtractByOcpc:::ocpc"]=0
operation_parameters_maximum_occurences["getExtracts:::page"]=0
operation_parameters_maximum_occurences["getExtracts:::count"]=0
operation_parameters_maximum_occurences["getExtracts:::sort"]=0
operation_parameters_maximum_occurences["getFlowerByOcpc:::ocpc"]=0
operation_parameters_maximum_occurences["getFlowers:::page"]=0
operation_parameters_maximum_occurences["getFlowers:::count"]=0
operation_parameters_maximum_occurences["getFlowers:::sort"]=0
operation_parameters_maximum_occurences["getProductByOcpc:::ocpc"]=0
operation_parameters_maximum_occurences["getProducts:::page"]=0
operation_parameters_maximum_occurences["getProducts:::count"]=0
operation_parameters_maximum_occurences["getProducts:::sort"]=0
operation_parameters_maximum_occurences["getSeedCompanies:::page"]=0
operation_parameters_maximum_occurences["getSeedCompanies:::count"]=0
operation_parameters_maximum_occurences["getSeedCompanies:::sort"]=0
operation_parameters_maximum_occurences["getSeedCompanyByOcpc:::ocpc"]=0
operation_parameters_maximum_occurences["getSeedCompanyStrainsByOcpc:::ocpc"]=0
operation_parameters_maximum_occurences["getSeedCompanyStrainsByOcpc:::page"]=0
operation_parameters_maximum_occurences["getSeedCompanyStrainsByOcpc:::count"]=0
operation_parameters_maximum_occurences["getStrainByOcpc:::ocpc"]=0
operation_parameters_maximum_occurences["getStrains:::page"]=0
operation_parameters_maximum_occurences["getStrains:::count"]=0
operation_parameters_maximum_occurences["getStrains:::sort"]=0
operation_parameters_maximum_occurences["getStudies:::page"]=0
operation_parameters_maximum_occurences["getStudies:::count"]=0
operation_parameters_maximum_occurences["getStudies:::sort"]=0
operation_parameters_maximum_occurences["getStudiesByCondition:::conditionSlug"]=0
operation_parameters_maximum_occurences["getStudiesByCondition:::page"]=0
operation_parameters_maximum_occurences["getStudiesByCondition:::count"]=0
operation_parameters_maximum_occurences["getStudiesByCondition:::sort"]=0
operation_parameters_maximum_occurences["getStudiesConditions:::sort"]=0
operation_parameters_maximum_occurences["getStudyByIdentifier:::identifierType"]=0
operation_parameters_maximum_occurences["getStudyByIdentifier:::identifier"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["getBrandByOcpc:::ocpc"]=""
operation_parameters_collection_type["getBrandEdibles:::ocpc"]=""
operation_parameters_collection_type["getBrandEdibles:::page"]=""
operation_parameters_collection_type["getBrandEdibles:::count"]=""
operation_parameters_collection_type["getBrandEdibles:::sort"]=""
operation_parameters_collection_type["getBrandExtracts:::ocpc"]=""
operation_parameters_collection_type["getBrandExtracts:::page"]=""
operation_parameters_collection_type["getBrandExtracts:::count"]=""
operation_parameters_collection_type["getBrandExtracts:::sort"]=""
operation_parameters_collection_type["getBrandFlowers:::ocpc"]=""
operation_parameters_collection_type["getBrandFlowers:::page"]=""
operation_parameters_collection_type["getBrandFlowers:::count"]=""
operation_parameters_collection_type["getBrandFlowers:::sort"]=""
operation_parameters_collection_type["getBrandProducts:::ocpc"]=""
operation_parameters_collection_type["getBrandProducts:::page"]=""
operation_parameters_collection_type["getBrandProducts:::count"]=""
operation_parameters_collection_type["getBrandProducts:::sort"]=""
operation_parameters_collection_type["getBrands:::page"]=""
operation_parameters_collection_type["getBrands:::count"]=""
operation_parameters_collection_type["getBrands:::sort"]=""
operation_parameters_collection_type["getEdibleByOcpc:::ocpc"]=""
operation_parameters_collection_type["getEdibles:::page"]=""
operation_parameters_collection_type["getEdibles:::count"]=""
operation_parameters_collection_type["getEdibles:::sort"]=""
operation_parameters_collection_type["getExtractByOcpc:::ocpc"]=""
operation_parameters_collection_type["getExtracts:::page"]=""
operation_parameters_collection_type["getExtracts:::count"]=""
operation_parameters_collection_type["getExtracts:::sort"]=""
operation_parameters_collection_type["getFlowerByOcpc:::ocpc"]=""
operation_parameters_collection_type["getFlowers:::page"]=""
operation_parameters_collection_type["getFlowers:::count"]=""
operation_parameters_collection_type["getFlowers:::sort"]=""
operation_parameters_collection_type["getProductByOcpc:::ocpc"]=""
operation_parameters_collection_type["getProducts:::page"]=""
operation_parameters_collection_type["getProducts:::count"]=""
operation_parameters_collection_type["getProducts:::sort"]=""
operation_parameters_collection_type["getSeedCompanies:::page"]=""
operation_parameters_collection_type["getSeedCompanies:::count"]=""
operation_parameters_collection_type["getSeedCompanies:::sort"]=""
operation_parameters_collection_type["getSeedCompanyByOcpc:::ocpc"]=""
operation_parameters_collection_type["getSeedCompanyStrainsByOcpc:::ocpc"]=""
operation_parameters_collection_type["getSeedCompanyStrainsByOcpc:::page"]=""
operation_parameters_collection_type["getSeedCompanyStrainsByOcpc:::count"]=""
operation_parameters_collection_type["getStrainByOcpc:::ocpc"]=""
operation_parameters_collection_type["getStrains:::page"]=""
operation_parameters_collection_type["getStrains:::count"]=""
operation_parameters_collection_type["getStrains:::sort"]=""
operation_parameters_collection_type["getStudies:::page"]=""
operation_parameters_collection_type["getStudies:::count"]=""
operation_parameters_collection_type["getStudies:::sort"]=""
operation_parameters_collection_type["getStudiesByCondition:::conditionSlug"]=""
operation_parameters_collection_type["getStudiesByCondition:::page"]=""
operation_parameters_collection_type["getStudiesByCondition:::count"]=""
operation_parameters_collection_type["getStudiesByCondition:::sort"]=""
operation_parameters_collection_type["getStudiesConditions:::sort"]=""
operation_parameters_collection_type["getStudyByIdentifier:::identifierType"]=""
operation_parameters_collection_type["getStudyByIdentifier:::identifier"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/?/%3F/g' <<<$raw_url);

    echo $value
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type=$1

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo ${mime_type_abbreviations[$mime_type]}
    else
        echo $1
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add convertion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local body_parameter_count=${#body_parameters[@]}
    local count=0
    for key in "${!body_parameters[@]}"; do
        body_json+="\"${key}\": ${body_parameters[${key}]}"
        if [[ $count -lt $body_parameter_count-1 ]]; then
            body_json+=", "
        fi
        count+=1
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Check if provided parameters match specification requirements
#
##############################################################################
validate_request_parameters() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        regexp="(.*)(\{$pparam\})(.*)"
        if [[ $path_template =~ $regexp ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    # Now append query parameters - if any
    if [[ ${#query_params[@]} -gt 0 ]]; then
        path_template+="?"
    fi

    local query_parameter_count=${#query_params[@]}
    local count=0
    for qparam in "${query_params[@]}"; do
        # Get the array of parameter values
        local parameter_values=($(echo "${operation_parameters[$qparam]}" | sed -e 's/'":::"'/\n/g' | while read line; do echo $line | sed 's/[\t ]/'":::"'/g'; done))

        #
        # Check if the number of provided values is not less than minimum
        # required
        #
        if [[ "$force" = false ]]; then
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurences["${operation}:::${qparam}"]} ]]; then
                echo "Error: Too few values provided for '${qparam}' parameter"
                exit 1
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} ]]; then
                if [[ "$force" = false ]]; then
                    echo "Error: Too many values provided for '${qparam}' parameter"
                    exit 1
                fi
            fi
        fi

        if [[ "${operation_parameters_collection_type[${operation}:::${qparam}]}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qparam}=${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+="&"
                fi
                vcount+=1
            done
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qparam}=${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+="&"
                fi
                vcount+=1
            done
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "csv" ]]; then
            path_template+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+=","
                fi
                vcount+=1
            done
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "ssv" ]]; then
            path_template+="${qparam}="
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+=" "
                fi
                vcount+=1
            done
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "tsv" ]]; then
            path_template+="${qparam}="
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+="\t"
                fi
                vcount+=1
            done
        else
            echo -e ""
            echo -e "Error: Unsupported collection format "
            echo -e ""
            exit 1
        fi


        if [[ $count -lt $query_parameter_count-1 ]]; then
            path_template+="&"
        fi
        count+=1
    done

}



##############################################################################
#
# Build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        regexp="(.*)(\{$pparam\})(.*)"
        if [[ $path_template =~ $regexp ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    local query_parameter_count=${#query_params[@]}
    local count=0
    for qparam in "${query_params[@]}"; do
        # Get the array of parameter values
        local parameter_values=($(echo "${operation_parameters[$qparam]}" | sed -e 's/'":::"'/\n/g' | while read line; do echo $line | sed 's/[\t ]/'":::"'/g'; done))
        local parameter_value=""

        #
        # Check if the number of provided values is not less than minimum
        # required
        #
        if [[ "$force" = false ]]; then
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurences["${operation}:::${qparam}"]} ]]; then
                echo "Error: Too few values provided for '${qparam}' parameter"
                exit 1
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} ]]; then
                if [[ "$force" = false ]]; then
                    echo "Error: Too many values provided for '${qparam}' parameter"
                    exit 1
                fi
            fi
        fi

        #
        # Append parameters without specific cardinality
        #
        if [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qparam}=${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+="&"
                fi
                vcount+=1
            done
        #
        # Append parameters specified as 'mutli' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qparam}=${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+="&"
                fi
                vcount+=1
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+=","
                fi
                vcount+=1
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+=" "
                fi
                vcount+=1
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+="\t"
                fi
                vcount+=1
            done
        fi

        if [[ -n "${parameter_value}" ]]; then
            query_request_part+="${parameter_value}"
        fi

        if [[ $count -lt $query_parameter_count-1 && -n "${parameter_value}" ]]; then
            query_request_part+="&"
        fi

        count+=1

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?$(echo ${query_request_part} | sed s'/&$//')"
    fi

    echo $path_template
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

$(tput bold)$(tput setaf 7)Otreeba Open Cannabis API command line client (API version 1.0.0)$(tput sgr0)

$(tput bold)$(tput setaf 7)Usage$(tput sgr0)

  $(tput setaf 2)${script_name}$(tput sgr0) [-h|--help] [-V|--version] [--about] [$(tput setaf 1)<curl-options>$(tput sgr0)]
           [-ac|--accept $(tput setaf 2)<mime-type>$(tput sgr0)] [-ct,--content-type $(tput setaf 2)<mime-type>$(tput sgr0)]
           [--host $(tput setaf 6)<url>$(tput sgr0)] [--dry-run] $(tput setaf 3)<operation>$(tput sgr0) [-h|--help] [$(tput setaf 4)<headers>$(tput sgr0)]
           [$(tput setaf 5)<parameters>$(tput sgr0)] [$(tput setaf 5)<body-parameters>$(tput sgr0)]

  - $(tput setaf 6)<url>$(tput sgr0) - endpoint of the REST service without basepath

  - $(tput setaf 1)<curl-options>$(tput sgr0) - any valid cURL options can be passed before $(tput setaf 3)<operation>$(tput sgr0)
  - $(tput setaf 2)<mime-type>$(tput sgr0) - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - $(tput setaf 4)<headers>$(tput sgr0) - HTTP headers can be passed in the form $(tput setaf 3)HEADER$(tput sgr0):$(tput setaf 4)VALUE$(tput sgr0)
  - $(tput setaf 5)<parameters>$(tput sgr0) - REST operation parameters can be passed in the following
                   forms:
                   * $(tput setaf 3)KEY$(tput sgr0)=$(tput setaf 4)VALUE$(tput sgr0) - path or query parameters
  - $(tput setaf 5)<body-parameters>$(tput sgr0) - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * $(tput setaf 3)KEY$(tput sgr0)==$(tput setaf 4)VALUE$(tput sgr0) - body parameters which will be added to body
                                      JSON as '{ ..., "$(tput setaf 3)KEY$(tput sgr0)": "$(tput setaf 4)VALUE$(tput sgr0)", ... }'
                        * $(tput setaf 3)KEY$(tput sgr0):=$(tput setaf 4)VALUE$(tput sgr0) - body parameters which will be added to body
                                      JSON as '{ ..., "$(tput setaf 3)KEY$(tput sgr0)": $(tput setaf 4)VALUE$(tput sgr0), ... }'

EOF
    echo -e "$(tput bold)$(tput setaf 7)Operations (grouped by tags)$(tput sgr0)"
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[brands]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)getBrandByOcpc$(tput sgr0);Find brand by Open Cannabis Product Code (OCPC).
  $(tput setaf 6)getBrandEdibles$(tput sgr0);Get a list of all current edibles for the given brand.
  $(tput setaf 6)getBrandExtracts$(tput sgr0);Get a list of all current extracts for the given brand.
  $(tput setaf 6)getBrandFlowers$(tput sgr0);Get a list of all current flowers for the given brand.
  $(tput setaf 6)getBrandProducts$(tput sgr0);Get a list of all current products for the given brand.
  $(tput setaf 6)getBrands$(tput sgr0);Get a list of all current brands.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[edibles]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)getEdibleByOcpc$(tput sgr0);Find edible by Open Cannabis Product Code (OCPC).
  $(tput setaf 6)getEdibles$(tput sgr0);Get a list of all current edibles.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[extracts]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)getExtractByOcpc$(tput sgr0);Find extract by Open Cannabis Product Code (OCPC).
  $(tput setaf 6)getExtracts$(tput sgr0);Get a list of all current extracts.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[flowers]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)getFlowerByOcpc$(tput sgr0);Find flower by Open Cannabis Product Code (OCPC).
  $(tput setaf 6)getFlowers$(tput sgr0);Get a list of all current flowers.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[products]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)getProductByOcpc$(tput sgr0);Find product by Open Cannabis Product Code (OCPC).
  $(tput setaf 6)getProducts$(tput sgr0);Get a list of all current products.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[seedCompanies]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)getSeedCompanies$(tput sgr0);Get a list of all current seed companies.
  $(tput setaf 6)getSeedCompanyByOcpc$(tput sgr0);Find seed company by Open Cannabis Product Code (OCPC).
  $(tput setaf 6)getSeedCompanyStrainsByOcpc$(tput sgr0);Find strains for a seed company by Open Cannabis Product Code (OCPC).
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[strains]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)getStrainByOcpc$(tput sgr0);Find strain by Open Cannabis Product Code (OCPC).
  $(tput setaf 6)getStrains$(tput sgr0);Get a list of all current strains.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[studies]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)getStudies$(tput sgr0);Get a list of all current studies.
  $(tput setaf 6)getStudiesByCondition$(tput sgr0);Get a list of all current studies for a given condition.
  $(tput setaf 6)getStudiesConditions$(tput sgr0);Get a list of all current conditions for studies.
  $(tput setaf 6)getStudyByIdentifier$(tput sgr0);Find study by DOI, PubMed ID, or slug.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Options$(tput sgr0)"
    echo -e "  -h,--help\t\t\t\tPrint this help"
    echo -e "  -V,--version\t\t\t\tPrint API version"
    echo -e "  --about\t\t\t\tPrint the information about service"
    echo -e "  --host $(tput setaf 6)<url>$(tput sgr0)\t\t\t\tSpecify the host URL "
echo -e "              \t\t\t\t(e.g. 'https://api.otreeba.com')"

    echo -e "  --force\t\t\t\tForce command invocation in spite of missing"
    echo -e "         \t\t\t\trequired parameters or wrong content type"
    echo -e "  --dry-run\t\t\t\tPrint out the cURL command without"
    echo -e "           \t\t\t\texecuting it"
    echo -e "  -ac,--accept $(tput setaf 3)<mime-type>$(tput sgr0)\t\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type $(tput setaf 3)<mime-type>$(tput sgr0)\tSet the 'Content-type' header in "
    echo -e "                                \tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Otreeba Open Cannabis API command line client (API version 1.0.0)$(tput sgr0)"
    echo ""
    echo -e "License: Attribution 4.0 International (CC BY 4.0)"
    echo -e "Contact: api@otreeba.com"
    echo ""
read -d '' appdescription <<EOF

This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).
EOF
echo "$appdescription" | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "$(tput bold)Otreeba Open Cannabis API command line client (API version 1.0.0)$(tput sgr0)"
    echo ""
}

##############################################################################
#
# Print help for getBrandByOcpc operation
#
##############################################################################
print_getBrandByOcpc_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getBrandByOcpc - Find brand by Open Cannabis Product Code (OCPC).$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single brand." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the brand to return. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getBrandEdibles operation
#
##############################################################################
print_getBrandEdibles_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getBrandEdibles - Get a list of all current edibles for the given brand.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of edibles." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the brand to list edibles for. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getBrandExtracts operation
#
##############################################################################
print_getBrandExtracts_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getBrandExtracts - Get a list of all current extracts for the given brand.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of extracts." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the brand to list extracts for. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getBrandFlowers operation
#
##############################################################################
print_getBrandFlowers_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getBrandFlowers - Get a list of all current flowers for the given brand.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of flowers." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the brand to list flowers for. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getBrandProducts operation
#
##############################################################################
print_getBrandProducts_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getBrandProducts - Get a list of all current products for the given brand.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of products." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the brand to list products for. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getBrands operation
#
##############################################################################
print_getBrands_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getBrands - Get a list of all current brands.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of brands." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Brand not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getEdibleByOcpc operation
#
##############################################################################
print_getEdibleByOcpc_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getEdibleByOcpc - Find edible by Open Cannabis Product Code (OCPC).$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single edible." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the edible to return. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getEdibles operation
#
##############################################################################
print_getEdibles_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getEdibles - Get a list of all current edibles.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of edibles." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Edible not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getExtractByOcpc operation
#
##############################################################################
print_getExtractByOcpc_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getExtractByOcpc - Find extract by Open Cannabis Product Code (OCPC).$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single extract." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the extract to return. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getExtracts operation
#
##############################################################################
print_getExtracts_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getExtracts - Get a list of all current extracts.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of extracts." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Extract not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getFlowerByOcpc operation
#
##############################################################################
print_getFlowerByOcpc_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getFlowerByOcpc - Find flower by Open Cannabis Product Code (OCPC).$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single flower." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the flower to return. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getFlowers operation
#
##############################################################################
print_getFlowers_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getFlowers - Get a list of all current flowers.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of flowers." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Flower not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getProductByOcpc operation
#
##############################################################################
print_getProductByOcpc_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getProductByOcpc - Find product by Open Cannabis Product Code (OCPC).$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single product." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the product to return. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getProducts operation
#
##############################################################################
print_getProducts_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getProducts - Get a list of all current products.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of products." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Product not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getSeedCompanies operation
#
##############################################################################
print_getSeedCompanies_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getSeedCompanies - Get a list of all current seed companies.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of seed companies." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getSeedCompanyByOcpc operation
#
##############################################################################
print_getSeedCompanyByOcpc_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getSeedCompanyByOcpc - Find seed company by Open Cannabis Product Code (OCPC).$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single seed company." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the seed company to return. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getSeedCompanyStrainsByOcpc operation
#
##############################################################################
print_getSeedCompanyStrainsByOcpc_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getSeedCompanyStrainsByOcpc - Find strains for a seed company by Open Cannabis Product Code (OCPC).$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of strains for a single seed company." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the seed company to return strains for. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Seed company not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getStrainByOcpc operation
#
##############################################################################
print_getStrainByOcpc_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getStrainByOcpc - Find strain by Open Cannabis Product Code (OCPC).$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single strain." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)ocpc$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - OCPC of the strain to return. $(tput setaf 3)Specify as: ocpc=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getStrains operation
#
##############################################################################
print_getStrains_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getStrains - Get a list of all current strains.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of strains." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid OCPC supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Strain not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getStudies operation
#
##############################################################################
print_getStudies_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getStudies - Get a list of all current studies.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of studies." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -createdAt)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getStudiesByCondition operation
#
##############################################################################
print_getStudiesByCondition_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getStudiesByCondition - Get a list of all current studies for a given condition.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a paginated list of studies." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)conditionSlug$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - Slug of the condition to return studies for. $(tput setaf 3)Specify as: conditionSlug=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)page$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0)$(tput sgr0) - Page to be returned.$(tput setaf 3) Specify as: page=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)count$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 6)(default: 10)$(tput sgr0) - The number of items to return. Default 10. Max 50.$(tput setaf 3) Specify as: count=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: -year)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Condition.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Condition.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Condition.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Condition.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Condition.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Condition.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getStudiesConditions operation
#
##############################################################################
print_getStudiesConditions_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getStudiesConditions - Get a list of all current conditions for studies.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a list of all current conditions for studies." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)sort$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 6)(default: name)$(tput sgr0) - How to sort the items.$(tput setaf 3) Specify as: sort=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid arguments supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getStudyByIdentifier operation
#
##############################################################################
print_getStudyByIdentifier_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getStudyByIdentifier - Find study by DOI, PubMed ID, or slug.$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single study." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)identifierType$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - Type of identifier to for the study to return. $(tput setaf 3)Specify as: identifierType=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)identifier$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - Identifier for the study to return. $(tput setaf 3)Specify as: identifier=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;Successful operation.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid argument supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid argument supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid argument supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid argument supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid argument supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid argument supplied.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 401 in
        1*)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  401;Unauthorized action.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Study not found.$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}


##############################################################################
#
# Call getBrandByOcpc operation
#
##############################################################################
call_getBrandByOcpc() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/brands/{ocpc}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/brands/{ocpc}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBrandEdibles operation
#
##############################################################################
call_getBrandEdibles() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/brands/{ocpc}/edibles" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/brands/{ocpc}/edibles" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBrandExtracts operation
#
##############################################################################
call_getBrandExtracts() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/brands/{ocpc}/extracts" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/brands/{ocpc}/extracts" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBrandFlowers operation
#
##############################################################################
call_getBrandFlowers() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/brands/{ocpc}/flowers" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/brands/{ocpc}/flowers" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBrandProducts operation
#
##############################################################################
call_getBrandProducts() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/brands/{ocpc}/products" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/brands/{ocpc}/products" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBrands operation
#
##############################################################################
call_getBrands() {
    local path_parameter_names=()
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/brands" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/brands" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getEdibleByOcpc operation
#
##############################################################################
call_getEdibleByOcpc() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/edibles/{ocpc}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/edibles/{ocpc}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getEdibles operation
#
##############################################################################
call_getEdibles() {
    local path_parameter_names=()
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/edibles" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/edibles" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getExtractByOcpc operation
#
##############################################################################
call_getExtractByOcpc() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/extracts/{ocpc}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/extracts/{ocpc}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getExtracts operation
#
##############################################################################
call_getExtracts() {
    local path_parameter_names=()
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/extracts" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/extracts" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getFlowerByOcpc operation
#
##############################################################################
call_getFlowerByOcpc() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/flowers/{ocpc}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/flowers/{ocpc}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getFlowers operation
#
##############################################################################
call_getFlowers() {
    local path_parameter_names=()
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/flowers" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/flowers" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getProductByOcpc operation
#
##############################################################################
call_getProductByOcpc() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/products/{ocpc}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/products/{ocpc}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getProducts operation
#
##############################################################################
call_getProducts() {
    local path_parameter_names=()
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/products" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/products" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getSeedCompanies operation
#
##############################################################################
call_getSeedCompanies() {
    local path_parameter_names=()
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/seed-companies" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/seed-companies" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getSeedCompanyByOcpc operation
#
##############################################################################
call_getSeedCompanyByOcpc() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/seed-companies/{ocpc}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/seed-companies/{ocpc}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getSeedCompanyStrainsByOcpc operation
#
##############################################################################
call_getSeedCompanyStrainsByOcpc() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=(page count)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/seed-companies/{ocpc}/strains" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/seed-companies/{ocpc}/strains" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getStrainByOcpc operation
#
##############################################################################
call_getStrainByOcpc() {
    local path_parameter_names=(ocpc)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/strains/{ocpc}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/strains/{ocpc}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getStrains operation
#
##############################################################################
call_getStrains() {
    local path_parameter_names=()
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/strains" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/strains" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getStudies operation
#
##############################################################################
call_getStudies() {
    local path_parameter_names=()
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/studies" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/studies" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getStudiesByCondition operation
#
##############################################################################
call_getStudiesByCondition() {
    local path_parameter_names=(conditionSlug)
    local query_parameter_names=(page count sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/studies/conditions/{conditionSlug}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/studies/conditions/{conditionSlug}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getStudiesConditions operation
#
##############################################################################
call_getStudiesConditions() {
    local path_parameter_names=()
    local query_parameter_names=(sort)

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/studies/conditions" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/studies/conditions" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getStudyByIdentifier operation
#
##############################################################################
call_getStudyByIdentifier() {
    local path_parameter_names=(identifierType identifier)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v1/studies/{identifierType}/{identifier}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v1/studies/{identifierType}/{identifier}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "Error: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "Error: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "Error: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguemnts before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    getBrandByOcpc)
    operation="getBrandByOcpc"
    ;;
    getBrandEdibles)
    operation="getBrandEdibles"
    ;;
    getBrandExtracts)
    operation="getBrandExtracts"
    ;;
    getBrandFlowers)
    operation="getBrandFlowers"
    ;;
    getBrandProducts)
    operation="getBrandProducts"
    ;;
    getBrands)
    operation="getBrands"
    ;;
    getEdibleByOcpc)
    operation="getEdibleByOcpc"
    ;;
    getEdibles)
    operation="getEdibles"
    ;;
    getExtractByOcpc)
    operation="getExtractByOcpc"
    ;;
    getExtracts)
    operation="getExtracts"
    ;;
    getFlowerByOcpc)
    operation="getFlowerByOcpc"
    ;;
    getFlowers)
    operation="getFlowers"
    ;;
    getProductByOcpc)
    operation="getProductByOcpc"
    ;;
    getProducts)
    operation="getProducts"
    ;;
    getSeedCompanies)
    operation="getSeedCompanies"
    ;;
    getSeedCompanyByOcpc)
    operation="getSeedCompanyByOcpc"
    ;;
    getSeedCompanyStrainsByOcpc)
    operation="getSeedCompanyStrainsByOcpc"
    ;;
    getStrainByOcpc)
    operation="getStrainByOcpc"
    ;;
    getStrains)
    operation="getStrains"
    ;;
    getStudies)
    operation="getStudies"
    ;;
    getStudiesByCondition)
    operation="getStudiesByCondition"
    ;;
    getStudiesConditions)
    operation="getStudiesConditions"
    ;;
    getStudyByIdentifier)
    operation="getStudyByIdentifier"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without qoutes
    if [[ "$operation" ]]; then
        IFS=':=' read body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    *:*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > $body_content_temp_file
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    echo "Error: No hostname provided!!!"
    echo "Check usage: '${script_name} --help'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    echo "Error: No operation specified!"
    echo "Check available operations: '${script_name} --help'"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    getBrandByOcpc)
    call_getBrandByOcpc
    ;;
    getBrandEdibles)
    call_getBrandEdibles
    ;;
    getBrandExtracts)
    call_getBrandExtracts
    ;;
    getBrandFlowers)
    call_getBrandFlowers
    ;;
    getBrandProducts)
    call_getBrandProducts
    ;;
    getBrands)
    call_getBrands
    ;;
    getEdibleByOcpc)
    call_getEdibleByOcpc
    ;;
    getEdibles)
    call_getEdibles
    ;;
    getExtractByOcpc)
    call_getExtractByOcpc
    ;;
    getExtracts)
    call_getExtracts
    ;;
    getFlowerByOcpc)
    call_getFlowerByOcpc
    ;;
    getFlowers)
    call_getFlowers
    ;;
    getProductByOcpc)
    call_getProductByOcpc
    ;;
    getProducts)
    call_getProducts
    ;;
    getSeedCompanies)
    call_getSeedCompanies
    ;;
    getSeedCompanyByOcpc)
    call_getSeedCompanyByOcpc
    ;;
    getSeedCompanyStrainsByOcpc)
    call_getSeedCompanyStrainsByOcpc
    ;;
    getStrainByOcpc)
    call_getStrainByOcpc
    ;;
    getStrains)
    call_getStrains
    ;;
    getStudies)
    call_getStudies
    ;;
    getStudiesByCondition)
    call_getStudiesByCondition
    ;;
    getStudiesConditions)
    call_getStudiesConditions
    ;;
    getStudyByIdentifier)
    call_getStudyByIdentifier
    ;;
    *)
    echo "Error: Unknown operation: $operation"
    echo ""
    print_help
    exit 1
esac
