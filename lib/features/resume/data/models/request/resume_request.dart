import 'package:json_annotation/json_annotation.dart';

part 'resume_request.g.dart';

@JsonSerializable()
class SaveResumeRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;
  @JsonKey(name: 'position_seconds')
  final int positionSeconds;

  const SaveResumeRequest({
    required this.audioId,
    required this.positionSeconds,
  });

  factory SaveResumeRequest.fromJson(Map<String, dynamic> json) =>
      _$SaveResumeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SaveResumeRequestToJson(this);
}
