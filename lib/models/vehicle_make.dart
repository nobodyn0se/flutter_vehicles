import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_make.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class VehicleMake {
  @HiveField(0)
  @JsonKey(name: 'Make_ID')
  int makeID;

  @HiveField(1)
  @JsonKey(name: 'Make_Name')
  String makeName;

  @HiveField(2)
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
