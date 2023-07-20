// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehicleModelAdapter extends TypeAdapter<VehicleModel> {
  @override
  final int typeId = 4;

  @override
  VehicleModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehicleModel(
      makeName: fields[1] as String,
      makeID: fields[0] as int,
      modelID: fields[2] as int,
      modelName: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VehicleModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.makeID)
      ..writeByte(1)
      ..write(obj.makeName)
      ..writeByte(2)
      ..write(obj.modelID)
      ..writeByte(3)
      ..write(obj.modelName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
