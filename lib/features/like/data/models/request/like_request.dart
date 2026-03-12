import 'package:json_annotation/json_annotation.dart';

part 'like_request.g.dart';

@JsonSerializable()
class LikeRequest {
  @JsonKey(name: 'target_type')
  final String targetType;
  @JsonKey(name: 'target_id')
  final int targetId;

  const LikeRequest({required this.targetType, required this.targetId});

  factory LikeRequest.fromJson(Map<String, dynamic> json) =>
      _$LikeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LikeRequestToJson(this);
}
