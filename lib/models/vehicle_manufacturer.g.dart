// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_manufacturer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleManufacturer _$VehicleManufacturerFromJson(Map<String, dynamic> json) =>
    VehicleManufacturer(
      country: json['Country'] as String,
      manufacturerCommonName: json['Mfr_CommonName'] as String?,
      manufacturerID: json['Mfr_ID'] as int,
      manufacturerName: json['Mfr_Name'] as String,
    );

Map<String, dynamic> _$VehicleManufacturerToJson(
        VehicleManufacturer instance) =>
    <String, dynamic>{
      'Country': instance.country,
      'Mfr_CommonName': instance.manufacturerCommonName,
      'Mfr_ID': instance.manufacturerID,
      'Mfr_Name': instance.manufacturerName,
    };
