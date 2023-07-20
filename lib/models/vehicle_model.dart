import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_model.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class VehicleModel {
  @HiveField(0)
  @JsonKey(name: 'Make_ID')
  int makeID;

  @HiveField(1)
  @JsonKey(name: 'Make_Name')
  String makeName;

  @HiveField(2)
  @JsonKey(name: 'Model_ID')
  int modelID;

  @HiveField(3)
  @JsonKey(name: 'Model_Name')
  String modelName;

  VehicleModel(
      {required this.makeName,
      required this.makeID,
      required this.modelID,
      required this.modelName});

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleModelToJson(this);
}
