import 'package:json_annotation/json_annotation.dart';

part 'clip_request.g.dart';

@JsonSerializable()
class CreateClipRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;
  @JsonKey(name: 'start_time')
  final int startTime;
  @JsonKey(name: 'end_time')
  final int endTime;

  const CreateClipRequest({
    required this.audioId,
    required this.startTime,
    required this.endTime,
  });

  factory CreateClipRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateClipRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateClipRequestToJson(this);
}
