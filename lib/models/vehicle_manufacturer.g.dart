// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_manufacturer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehicleManufacturerAdapter extends TypeAdapter<VehicleManufacturer> {
  @override
  final int typeId = 0;

  @override
  VehicleManufacturer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehicleManufacturer(
      country: fields[0] as String,
      manufacturerCommonName: fields[1] as String?,
      manufacturerID: fields[2] as int,
      manufacturerName: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VehicleManufacturer obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.manufacturerCommonName)
      ..writeByte(2)
      ..write(obj.manufacturerID)
      ..writeByte(3)
      ..write(obj.manufacturerName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleManufacturerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
