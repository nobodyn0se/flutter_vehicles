import 'package:flutter_vehicle_makes/models/response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

import '../vehicle_make.dart';

part 'vehicle_make_response.g.dart';

@JsonSerializable()
class VehicleMakeResponse extends BaseResponse {
  @JsonKey(name: 'Results')
  List<VehicleMake> vehicleMakes;

  VehicleMakeResponse(
      {required this.vehicleMakes,
      required int count,
      required String message,
      String? searchCriteria})
      : super(count: count, message: message, searchCriteria: searchCriteria);

  factory VehicleMakeResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleMakeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleMakeResponseToJson(this);
}
