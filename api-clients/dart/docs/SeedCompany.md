# swagger.model.SeedCompany

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the seed company. | [default to null]
**ocpc** | **String** | Open Cannabis Product Code for the seed company. | [optional] [default to null]
**description** | **String** | Description of the seed company. | [optional] [default to null]
**qr** | **String** | URL for QR that leads to page on Cannabis Reports. | [optional] [default to null]
**url** | **String** | URL for seed company on Cannabis Reports. | [optional] [default to null]
**image** | **String** | URL for logo for seed company. | [optional] [default to null]
**lineage** | [**Object**](Object.md) | Object of countries that this seed company has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;} | [optional] [default to null]
**strains** | **List&lt;String&gt;** | OCPCs of the strains from this seed company. | [optional] [default to []]
**createdAt** | [**DateTime**](DateTime.md) | Date and time record was created, UTC. | [optional] [default to null]
**updatedAt** | [**DateTime**](DateTime.md) | Date and time record was updated, UTC. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


