import 'package:json_annotation/json_annotation.dart';

part 'vehicle_model.g.dart';

@JsonSerializable()
class VehicleModel {
  @JsonKey(name: 'Make_ID')
  int makeID;

  @JsonKey(name: 'Make_Name')
  String makeName;

  @JsonKey(name: 'Model_ID')
  int modelID;

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
