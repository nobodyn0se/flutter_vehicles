import 'package:flutter_vehicle_makes/models/response/base_response.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import '../vehicle_model.dart';

part 'vehicle_model_response.g.dart';

@HiveType(typeId: 5)
@JsonSerializable()
class VehicleModelResponse extends BaseResponse {
  @HiveField(0)
  @JsonKey(name: 'Results')
  List<VehicleModel> vehicleModels;

  VehicleModelResponse(
      {required this.vehicleModels,
      int count = 0,
      String message = '',
      String? searchCriteria})
      : super(count: count, message: message, searchCriteria: searchCriteria);

  factory VehicleModelResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleModelResponseToJson(this);
}
