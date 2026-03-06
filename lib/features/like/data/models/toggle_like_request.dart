import 'package:json_annotation/json_annotation.dart';

part 'toggle_like_request.g.dart';

@JsonSerializable()
class ToggleLikeRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;

  const ToggleLikeRequest({required this.audioId});

  factory ToggleLikeRequest.fromJson(Map<String, dynamic> json) =>
      _$ToggleLikeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ToggleLikeRequestToJson(this);
}
