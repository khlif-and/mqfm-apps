import 'package:json_annotation/json_annotation.dart';

part 'progress_request.g.dart';

@JsonSerializable()
class SaveProgressRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;
  @JsonKey(name: 'last_position')
  final int lastPosition;
  final int duration;

  const SaveProgressRequest({
    required this.audioId,
    required this.lastPosition,
    required this.duration,
  });

  factory SaveProgressRequest.fromJson(Map<String, dynamic> json) =>
      _$SaveProgressRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SaveProgressRequestToJson(this);
}
