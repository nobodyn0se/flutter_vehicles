// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_make_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleMakeResponse _$VehicleMakeResponseFromJson(Map<String, dynamic> json) =>
    VehicleMakeResponse(
      vehicleMakes: (json['Results'] as List<dynamic>)
          .map((e) => VehicleMake.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['Count'] as int,
      message: json['Message'] as String,
      searchCriteria: json['SearchCriteria'] as String?,
    );

Map<String, dynamic> _$VehicleMakeResponseToJson(
        VehicleMakeResponse instance) =>
    <String, dynamic>{
      'Count': instance.count,
      'Message': instance.message,
      'SearchCriteria': instance.searchCriteria,
      'Results': instance.vehicleMakes,
    };
