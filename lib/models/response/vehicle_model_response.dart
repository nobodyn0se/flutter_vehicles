import 'package:flutter_vehicle_makes/models/response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

import '../vehicle_model.dart';

part 'vehicle_model_response.g.dart';

@JsonSerializable()
class VehicleModelResponse extends BaseResponse {
  List<VehicleModel> vehicleModels;

  VehicleModelResponse(
      {required this.vehicleModels,
      required int count,
      required String message,
      String? searchCriteria})
      : super(count: count, message: message, searchCriteria: searchCriteria);

  factory VehicleModelResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleModelResponseToJson(this);
}
