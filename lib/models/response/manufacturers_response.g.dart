// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturers_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ManufacturersResponseAdapter extends TypeAdapter<ManufacturersResponse> {
  @override
  final int typeId = 1;

  @override
  ManufacturersResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ManufacturersResponse(
      vehicleManufacturers: (fields[0] as List).cast<VehicleManufacturer>(),
    );
  }

  @override
  void write(BinaryWriter writer, ManufacturersResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.vehicleManufacturers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ManufacturersResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturersResponse _$ManufacturersResponseFromJson(
        Map<String, dynamic> json) =>
    ManufacturersResponse(
      vehicleManufacturers: (json['Results'] as List<dynamic>)
          .map((e) => VehicleManufacturer.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['Count'] as int? ?? 0,
      message: json['Message'] as String? ?? '',
      searchCriteria: json['SearchCriteria'] as String?,
    );

Map<String, dynamic> _$ManufacturersResponseToJson(
        ManufacturersResponse instance) =>
    <String, dynamic>{
      'Count': instance.count,
      'Message': instance.message,
      'SearchCriteria': instance.searchCriteria,
      'Results': instance.vehicleManufacturers,
    };
