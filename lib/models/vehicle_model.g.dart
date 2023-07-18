// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) => VehicleModel(
      makeName: json['Make_Name'] as String,
      makeID: json['Make_ID'] as int,
      modelID: json['Model_ID'] as int,
      modelName: json['Model_Name'] as String,
    );

Map<String, dynamic> _$VehicleModelToJson(VehicleModel instance) =>
    <String, dynamic>{
      'Make_ID': instance.makeID,
      'Make_Name': instance.makeName,
      'Model_ID': instance.modelID,
      'Model_Name': instance.modelName,
    };
