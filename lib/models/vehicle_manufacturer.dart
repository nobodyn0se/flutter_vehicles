import 'package:json_annotation/json_annotation.dart';

part 'vehicle_manufacturer.g.dart';

@JsonSerializable()
class VehicleManufacturer {
  @JsonKey(name: 'Country')
  String country;

  @JsonKey(name: 'Mfr_CommonName')
  String? manufacturerCommonName;

  @JsonKey(name: 'Mfr_ID')
  int manufacturerID;

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
