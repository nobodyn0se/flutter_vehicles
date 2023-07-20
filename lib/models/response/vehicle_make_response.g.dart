// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_make_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehicleMakeResponseAdapter extends TypeAdapter<VehicleMakeResponse> {
  @override
  final int typeId = 3;

  @override
  VehicleMakeResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehicleMakeResponse(
      vehicleMakes: (fields[0] as List).cast<VehicleMake>(),
    );
  }

  @override
  void write(BinaryWriter writer, VehicleMakeResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.vehicleMakes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleMakeResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleMakeResponse _$VehicleMakeResponseFromJson(Map<String, dynamic> json) =>
    VehicleMakeResponse(
      vehicleMakes: (json['Results'] as List<dynamic>)
          .map((e) => VehicleMake.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['Count'] as int? ?? 0,
      message: json['Message'] as String? ?? '',
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
