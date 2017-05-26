# WWW::SwaggerClient::Object::Strain

## Load the model package
```perl
use WWW::SwaggerClient::Object::Strain;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the strain. | 
**ocpc** | **string** | Open Cannabis Product Code for the strain. | [optional] 
**seed_company** | **object** | Name and Open Cannabis Product Code of the seed company that created the strain. | [optional] 
**qr** | **string** | URL for QR that leads to page on Cannabis Reports. | [optional] 
**url** | **string** | URL for strain on Cannabis Reports. | [optional] 
**image** | **string** | URL for the main photo of the strain. | [optional] 
**lineage** | **object** | Object of countries that this strain has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;} | [optional] 
**genetics** | **object** | Names of the parents of the strains and their associated Open Cannabis Product Codes. | [optional] 
**children** | **ARRAY[string]** | Open Cannabis Product Codes of the children of this strain. | [optional] 
**created_at** | **DateTime** | Date and time record was created, UTC. | [optional] 
**updated_at** | **DateTime** | Date and time record was updated, UTC. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


