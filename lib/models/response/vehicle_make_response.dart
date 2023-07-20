import 'package:flutter_vehicle_makes/models/response/base_response.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import '../vehicle_make.dart';

part 'vehicle_make_response.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class VehicleMakeResponse extends BaseResponse {
  @HiveField(0)
  @JsonKey(name: 'Results')
  List<VehicleMake> vehicleMakes;

  VehicleMakeResponse(
      {required this.vehicleMakes,
      int count = 0,
      String message = '',
      String? searchCriteria})
      : super(count: count, message: message, searchCriteria: searchCriteria);

  factory VehicleMakeResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleMakeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleMakeResponseToJson(this);
}
