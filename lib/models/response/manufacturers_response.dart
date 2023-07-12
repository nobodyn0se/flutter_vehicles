import 'package:json_annotation/json_annotation.dart';

import '../vehicle_manufacturer.dart';

part 'manufacturers_response.g.dart';

@JsonSerializable()
class ManufacturersResponse {
  @JsonKey(name: 'Count')
  int count;

  @JsonKey(name: 'Message')
  String message;

  @JsonKey(name: 'SearchCriteria')
  String? searchCriteria;

  @JsonKey(name: 'Results')
  List<VehicleManufacturer> vehicleManufacturers;

  ManufacturersResponse(
      {required this.message,
      required this.count,
      this.searchCriteria,
      required this.vehicleManufacturers});

  factory ManufacturersResponse.fromJson(Map<String, dynamic> json) =>
      _$ManufacturersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturersResponseToJson(this);
}
