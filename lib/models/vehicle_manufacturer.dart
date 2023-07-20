import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_manufacturer.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class VehicleManufacturer {
  @HiveField(0)
  @JsonKey(name: 'Country')
  String country;

  @HiveField(1)
  @JsonKey(name: 'Mfr_CommonName')
  String? manufacturerCommonName;

  @HiveField(2)
  @JsonKey(name: 'Mfr_ID')
  int manufacturerID;

  @HiveField(3)
  @JsonKey(name: 'Mfr_Name')
  String manufacturerName;

  VehicleManufacturer(
      {required this.country,
      this.manufacturerCommonName,
      required this.manufacturerID,
      required this.manufacturerName});

  factory VehicleManufacturer.fromJson(Map<String, dynamic> json) =>
      _$VehicleManufacturerFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleManufacturerToJson(this);
}
