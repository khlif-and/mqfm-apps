import 'package:json_annotation/json_annotation.dart';

part 'stats_request.g.dart';

@JsonSerializable()
class RecordStatsRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;
  @JsonKey(name: 'listened_seconds')
  final int listenedSeconds;

  const RecordStatsRequest({
    required this.audioId,
    required this.listenedSeconds,
  });

  factory RecordStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordStatsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RecordStatsRequestToJson(this);
}
