# swagger-java-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>io.swagger</groupId>
    <artifactId>swagger-java-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.swagger:swagger-java-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

* target/swagger-java-client-1.0.0.jar
* target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import io.swagger.client.*;
import io.swagger.client.auth.*;
import io.swagger.client.model.*;
import io.swagger.client.api.BrandsApi;

import java.io.File;
import java.util.*;

public class BrandsApiExample {

    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        
        // Configure API key authorization: api_key
        ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
        api_key.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //api_key.setApiKeyPrefix("Token");

        BrandsApi apiInstance = new BrandsApi();
        String ocpc = "ocpc_example"; // String | OCPC of the brand to return.
        try {
            Brand result = apiInstance.getBrandByOcpc(ocpc);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BrandsApi#getBrandByOcpc");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.otreeba.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BrandsApi* | [**getBrandByOcpc**](docs/BrandsApi.md#getBrandByOcpc) | **GET** /brands/{ocpc} | Find brand by Open Cannabis Product Code (OCPC).
*BrandsApi* | [**getBrandEdibles**](docs/BrandsApi.md#getBrandEdibles) | **GET** /brands/{ocpc}/edibles | Get a list of all current edibles for the given brand.
*BrandsApi* | [**getBrandExtracts**](docs/BrandsApi.md#getBrandExtracts) | **GET** /brands/{ocpc}/extracts | Get a list of all current extracts for the given brand.
*BrandsApi* | [**getBrandFlowers**](docs/BrandsApi.md#getBrandFlowers) | **GET** /brands/{ocpc}/flowers | Get a list of all current flowers for the given brand.
*BrandsApi* | [**getBrandProducts**](docs/BrandsApi.md#getBrandProducts) | **GET** /brands/{ocpc}/products | Get a list of all current products for the given brand.
*BrandsApi* | [**getBrands**](docs/BrandsApi.md#getBrands) | **GET** /brands | Get a list of all current brands.
*EdiblesApi* | [**getEdibleByOcpc**](docs/EdiblesApi.md#getEdibleByOcpc) | **GET** /edibles/{ocpc} | Find edible by Open Cannabis Product Code (OCPC).
*EdiblesApi* | [**getEdibles**](docs/EdiblesApi.md#getEdibles) | **GET** /edibles | Get a list of all current edibles.
*ExtractsApi* | [**getExtractByOcpc**](docs/ExtractsApi.md#getExtractByOcpc) | **GET** /extracts/{ocpc} | Find extract by Open Cannabis Product Code (OCPC).
*ExtractsApi* | [**getExtracts**](docs/ExtractsApi.md#getExtracts) | **GET** /extracts | Get a list of all current extracts.
*FlowersApi* | [**getFlowerByOcpc**](docs/FlowersApi.md#getFlowerByOcpc) | **GET** /flowers/{ocpc} | Find flower by Open Cannabis Product Code (OCPC).
*FlowersApi* | [**getFlowers**](docs/FlowersApi.md#getFlowers) | **GET** /flowers | Get a list of all current flowers.
*ProductsApi* | [**getProductByOcpc**](docs/ProductsApi.md#getProductByOcpc) | **GET** /products/{ocpc} | Find product by Open Cannabis Product Code (OCPC).
*ProductsApi* | [**getProducts**](docs/ProductsApi.md#getProducts) | **GET** /products | Get a list of all current products.
*SeedCompaniesApi* | [**getSeedCompanies**](docs/SeedCompaniesApi.md#getSeedCompanies) | **GET** /seed-companies | Get a list of all current seed companies.
*SeedCompaniesApi* | [**getSeedCompanyByOcpc**](docs/SeedCompaniesApi.md#getSeedCompanyByOcpc) | **GET** /seed-companies/{ocpc} | Find seed company by Open Cannabis Product Code (OCPC).
*SeedCompaniesApi* | [**getSeedCompanyStrainsByOcpc**](docs/SeedCompaniesApi.md#getSeedCompanyStrainsByOcpc) | **GET** /seed-companies/{ocpc}/strains | Find strains for a seed company by Open Cannabis Product Code (OCPC).
*StrainsApi* | [**getStrainByOcpc**](docs/StrainsApi.md#getStrainByOcpc) | **GET** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
*StrainsApi* | [**getStrains**](docs/StrainsApi.md#getStrains) | **GET** /strains | Get a list of all current strains.
*StudiesApi* | [**getStudies**](docs/StudiesApi.md#getStudies) | **GET** /studies | Get a list of all current studies.
*StudiesApi* | [**getStudiesByCondition**](docs/StudiesApi.md#getStudiesByCondition) | **GET** /studies/conditions/{conditionSlug} | Get a list of all current studies for a given condition.
*StudiesApi* | [**getStudiesConditions**](docs/StudiesApi.md#getStudiesConditions) | **GET** /studies/conditions | Get a list of all current conditions for studies.
*StudiesApi* | [**getStudyByIdentifier**](docs/StudiesApi.md#getStudyByIdentifier) | **GET** /studies/{identifierType}/{identifier} | Find study by DOI, PubMed ID, or slug.


## Documentation for Models

 - [Brand](docs/Brand.md)
 - [Condition](docs/Condition.md)
 - [Edible](docs/Edible.md)
 - [Error](docs/Error.md)
 - [Extract](docs/Extract.md)
 - [Flower](docs/Flower.md)
 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse2001](docs/InlineResponse2001.md)
 - [InlineResponse20010](docs/InlineResponse20010.md)
 - [InlineResponse20011](docs/InlineResponse20011.md)
 - [InlineResponse20012](docs/InlineResponse20012.md)
 - [InlineResponse20013](docs/InlineResponse20013.md)
 - [InlineResponse2001Meta](docs/InlineResponse2001Meta.md)
 - [InlineResponse2002](docs/InlineResponse2002.md)
 - [InlineResponse2003](docs/InlineResponse2003.md)
 - [InlineResponse2004](docs/InlineResponse2004.md)
 - [InlineResponse2005](docs/InlineResponse2005.md)
 - [InlineResponse2006](docs/InlineResponse2006.md)
 - [InlineResponse2007](docs/InlineResponse2007.md)
 - [InlineResponse2008](docs/InlineResponse2008.md)
 - [InlineResponse2009](docs/InlineResponse2009.md)
 - [Meta](docs/Meta.md)
 - [Pagination](docs/Pagination.md)
 - [Product](docs/Product.md)
 - [SeedCompany](docs/SeedCompany.md)
 - [Strain](docs/Strain.md)
 - [Study](docs/Study.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### api_key

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

api@otreeba.com

