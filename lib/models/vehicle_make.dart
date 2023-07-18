import 'package:json_annotation/json_annotation.dart';

part 'vehicle_make.g.dart';

@JsonSerializable()
class VehicleMake {
  @JsonKey(name: 'Make_ID')
  int makeID;

  @JsonKey(name: 'Make_Name')
  String makeName;

  @JsonKey(name: 'Mfr_Name')
  String manufacturerName;

  VehicleMake(
      {required this.makeID,
      required this.makeName,
      required this.manufacturerName});

  factory VehicleMake.fromJson(Map<String, dynamic> json) =>
      _$VehicleMakeFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleMakeToJson(this);
}
