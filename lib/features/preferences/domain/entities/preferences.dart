import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences.freezed.dart';
part 'preferences.g.dart';

@freezed
class PreferencesEntity with _$PreferencesEntity {
  const factory PreferencesEntity({
    @Default(1.0) double playbackSpeed,
    @Default(0) int sleepTimerMinutes,
    @Default(false) bool autoDownload,
  }) = _PreferencesEntity;

  factory PreferencesEntity.fromJson(Map<String, dynamic> json) =>
      _$PreferencesEntityFromJson(json);
}
