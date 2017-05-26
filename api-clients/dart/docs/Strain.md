# swagger.model.Strain

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the strain. | [default to null]
**ocpc** | **String** | Open Cannabis Product Code for the strain. | [optional] [default to null]
**seedCompany** | [**Object**](Object.md) | Name and Open Cannabis Product Code of the seed company that created the strain. | [optional] [default to null]
**qr** | **String** | URL for QR that leads to page on Cannabis Reports. | [optional] [default to null]
**url** | **String** | URL for strain on Cannabis Reports. | [optional] [default to null]
**image** | **String** | URL for the main photo of the strain. | [optional] [default to null]
**lineage** | [**Object**](Object.md) | Object of countries that this strain has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;} | [optional] [default to null]
**genetics** | [**Object**](Object.md) | Names of the parents of the strains and their associated Open Cannabis Product Codes. | [optional] [default to null]
**children** | **List&lt;String&gt;** | Open Cannabis Product Codes of the children of this strain. | [optional] [default to []]
**createdAt** | [**DateTime**](DateTime.md) | Date and time record was created, UTC. | [optional] [default to null]
**updatedAt** | [**DateTime**](DateTime.md) | Date and time record was updated, UTC. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


