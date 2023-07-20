// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehicleModelResponseAdapter extends TypeAdapter<VehicleModelResponse> {
  @override
  final int typeId = 5;

  @override
  VehicleModelResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehicleModelResponse(
      vehicleModels: (fields[0] as List).cast<VehicleModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, VehicleModelResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.vehicleModels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleModelResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleModelResponse _$VehicleModelResponseFromJson(
        Map<String, dynamic> json) =>
    VehicleModelResponse(
      vehicleModels: (json['Results'] as List<dynamic>)
          .map((e) => VehicleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['Count'] as int? ?? 0,
      message: json['Message'] as String? ?? '',
      searchCriteria: json['SearchCriteria'] as String?,
    );

Map<String, dynamic> _$VehicleModelResponseToJson(
        VehicleModelResponse instance) =>
    <String, dynamic>{
      'Count': instance.count,
      'Message': instance.message,
      'SearchCriteria': instance.searchCriteria,
      'Results': instance.vehicleModels,
    };
