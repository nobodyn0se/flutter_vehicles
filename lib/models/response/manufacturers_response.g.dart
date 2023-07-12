// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturersResponse _$ManufacturersResponseFromJson(
        Map<String, dynamic> json) =>
    ManufacturersResponse(
      message: json['Message'] as String,
      count: json['Count'] as int,
      searchCriteria: json['SearchCriteria'] as String?,
      vehicleManufacturers: (json['Results'] as List<dynamic>)
          .map((e) => VehicleManufacturer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ManufacturersResponseToJson(
        ManufacturersResponse instance) =>
    <String, dynamic>{
      'Count': instance.count,
      'Message': instance.message,
      'SearchCriteria': instance.searchCriteria,
      'Results': instance.vehicleManufacturers,
    };
