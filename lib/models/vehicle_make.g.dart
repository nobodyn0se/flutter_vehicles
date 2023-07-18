// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_make.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleMake _$VehicleMakeFromJson(Map<String, dynamic> json) => VehicleMake(
      makeID: json['Make_ID'] as int,
      makeName: json['Make_Name'] as String,
      manufacturerName: json['Mfr_Name'] as String,
    );

Map<String, dynamic> _$VehicleMakeToJson(VehicleMake instance) =>
    <String, dynamic>{
      'Make_ID': instance.makeID,
      'Make_Name': instance.makeName,
      'Mfr_Name': instance.manufacturerName,
    };
