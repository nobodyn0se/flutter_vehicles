import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'Count')
  int count;

  @JsonKey(name: 'Message')
  String message;

  @JsonKey(name: 'SearchCriteria')
  String? searchCriteria;

  BaseResponse(
      {required this.count,
      required this.message,
      required this.searchCriteria});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
