import 'package:flutter_vehicle_makes/models/response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_make.g.dart';

@JsonSerializable()
class VehicleMake extends BaseResponse {
  @JsonKey(name: 'Make_ID')
  int makeID;

  @JsonKey(name: 'Make_Name')
  String makeName;

  @JsonKey(name: 'Mfr_Name')
  String manufacturerName;

  VehicleMake(
      {required this.makeID,
      required this.makeName,
      required this.manufacturerName,
      required int count,
      required String message,
      String? searchCriteria})
      : super(count: count, message: message, searchCriteria: searchCriteria);

  factory VehicleMake.fromJson(Map<String, dynamic> json) =>
      _$VehicleMakeFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleMakeToJson(this);
}
