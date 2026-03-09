import 'package:json_annotation/json_annotation.dart';

part 'preferences_request.g.dart';

@JsonSerializable()
class UpdatePreferencesRequest {
  @JsonKey(name: 'playback_speed')
  final double playbackSpeed;
  @JsonKey(name: 'sleep_timer_minutes')
  final int sleepTimerMinutes;
  @JsonKey(name: 'auto_download')
  final bool autoDownload;

  const UpdatePreferencesRequest({
    required this.playbackSpeed,
    required this.sleepTimerMinutes,
    required this.autoDownload,
  });

  factory UpdatePreferencesRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePreferencesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePreferencesRequestToJson(this);
}
