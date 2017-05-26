# SwaggerClient::Strain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the strain. | 
**ocpc** | **String** | Open Cannabis Product Code for the strain. | [optional] 
**seed_company** | **Object** | Name and Open Cannabis Product Code of the seed company that created the strain. | [optional] 
**qr** | **String** | URL for QR that leads to page on Cannabis Reports. | [optional] 
**url** | **String** | URL for strain on Cannabis Reports. | [optional] 
**image** | **String** | URL for the main photo of the strain. | [optional] 
**lineage** | **Object** | Object of countries that this strain has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;} | [optional] 
**genetics** | **Object** | Names of the parents of the strains and their associated Open Cannabis Product Codes. | [optional] 
**children** | **Array&lt;String&gt;** | Open Cannabis Product Codes of the children of this strain. | [optional] 
**created_at** | **DateTime** | Date and time record was created, UTC. | [optional] 
**updated_at** | **DateTime** | Date and time record was updated, UTC. | [optional] 


