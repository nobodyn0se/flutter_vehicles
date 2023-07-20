// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_make.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehicleMakeAdapter extends TypeAdapter<VehicleMake> {
  @override
  final int typeId = 2;

  @override
  VehicleMake read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehicleMake(
      makeID: fields[0] as int,
      makeName: fields[1] as String,
      manufacturerName: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VehicleMake obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.makeID)
      ..writeByte(1)
      ..write(obj.makeName)
      ..writeByte(2)
      ..write(obj.manufacturerName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleMakeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
