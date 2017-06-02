# swagger.model.Study

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the study. | [default to null]
**year** | **int** | Year of the study. | [optional] [default to null]
**doi** | **String** | Digital Object Identifier for the study. | [optional] [default to null]
**pubMedId** | **String** | PubMed ID for the study. | [optional] [default to null]
**slug** | **String** | Slug based on the study name. | [optional] [default to null]
**keyFindings** | **String** | Key findings for the study. | [optional] [default to null]
**conditions** | [**List&lt;Condition&gt;**](Condition.md) |  | [optional] [default to []]
**createdAt** | [**DateTime**](DateTime.md) | Date and time record was created, UTC. | [optional] [default to null]
**updatedAt** | [**DateTime**](DateTime.md) | Date and time record was updated, UTC. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


