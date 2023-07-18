// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleModelResponse _$VehicleModelResponseFromJson(
        Map<String, dynamic> json) =>
    VehicleModelResponse(
      vehicleModels: (json['Results'] as List<dynamic>)
          .map((e) => VehicleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['Count'] as int,
      message: json['Message'] as String,
      searchCriteria: json['SearchCriteria'] as String?,
    );

Map<String, dynamic> _$VehicleModelResponseToJson(
        VehicleModelResponse instance) =>
    <String, dynamic>{
      'Count': instance.count,
      'Message': instance.message,
      'SearchCriteria': instance.searchCriteria,
      'Results': instance.vehicleModels,
    };
