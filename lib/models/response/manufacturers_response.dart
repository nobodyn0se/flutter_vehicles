import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../vehicle_manufacturer.dart';
import 'base_response.dart';

part 'manufacturers_response.g.dart';

@collection
@JsonSerializable()
class ManufacturersResponse extends BaseResponse {
  // isar auto-increments this id if nullable
  Id? id;

  @JsonKey(name: 'Results')
  List<VehicleManufacturer> vehicleManufacturers;

  ManufacturersResponse(
      {required this.vehicleManufacturers,
      required int count,
      required String message,
      String? searchCriteria})
      : super(count: count, searchCriteria: searchCriteria, message: message);

  factory ManufacturersResponse.fromJson(Map<String, dynamic> json) =>
      _$ManufacturersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturersResponseToJson(this);
}
