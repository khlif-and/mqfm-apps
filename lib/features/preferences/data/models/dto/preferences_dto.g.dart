// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferencesDto _$PreferencesDtoFromJson(Map<String, dynamic> json) =>
    PreferencesDto(
      playbackSpeed: (json['playback_speed'] as num?)?.toDouble() ?? 1.0,
      sleepTimerMinutes: (json['sleep_timer_minutes'] as num?)?.toInt() ?? 0,
      autoDownload: json['auto_download'] as bool? ?? false,
    );

Map<String, dynamic> _$PreferencesDtoToJson(PreferencesDto instance) =>
    <String, dynamic>{
      'playback_speed': instance.playbackSpeed,
      'sleep_timer_minutes': instance.sleepTimerMinutes,
      'auto_download': instance.autoDownload,
    };
