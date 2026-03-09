import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences_event.freezed.dart';

@freezed
class PreferencesEvent with _$PreferencesEvent {
  const factory PreferencesEvent.fetch() = PreferencesFetch;
  const factory PreferencesEvent.update({
    required double playbackSpeed,
    required int sleepTimerMinutes,
    required bool autoDownload,
  }) = PreferencesUpdate;
}
