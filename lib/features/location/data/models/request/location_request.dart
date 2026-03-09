import 'package:json_annotation/json_annotation.dart';

part 'location_request.g.dart';

@JsonSerializable()
class UpdateLocationRequest {
  final double latitude;
  final double longitude;
  final String city;

  const UpdateLocationRequest({
    required this.latitude,
    required this.longitude,
    required this.city,
  });

  factory UpdateLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLocationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateLocationRequestToJson(this);
}
