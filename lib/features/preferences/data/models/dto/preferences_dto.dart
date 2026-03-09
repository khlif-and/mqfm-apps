import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/preferences/domain/entities/preferences.dart';

part 'preferences_dto.g.dart';

@JsonSerializable()
class PreferencesDto {
  @JsonKey(name: 'playback_speed', defaultValue: 1.0)
  final double playbackSpeed;
  @JsonKey(name: 'sleep_timer_minutes', defaultValue: 0)
  final int sleepTimerMinutes;
  @JsonKey(name: 'auto_download', defaultValue: false)
  final bool autoDownload;

  const PreferencesDto({
    this.playbackSpeed = 1.0,
    this.sleepTimerMinutes = 0,
    this.autoDownload = false,
  });

  factory PreferencesDto.fromJson(Map<String, dynamic> json) =>
      _$PreferencesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PreferencesDtoToJson(this);

  PreferencesEntity toEntity() {
    return PreferencesEntity(
      playbackSpeed: playbackSpeed,
      sleepTimerMinutes: sleepTimerMinutes,
      autoDownload: autoDownload,
    );
  }
}
