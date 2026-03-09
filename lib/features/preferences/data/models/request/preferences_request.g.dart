// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePreferencesRequest _$UpdatePreferencesRequestFromJson(
  Map<String, dynamic> json,
) => UpdatePreferencesRequest(
  playbackSpeed: (json['playback_speed'] as num).toDouble(),
  sleepTimerMinutes: (json['sleep_timer_minutes'] as num).toInt(),
  autoDownload: json['auto_download'] as bool,
);

Map<String, dynamic> _$UpdatePreferencesRequestToJson(
  UpdatePreferencesRequest instance,
) => <String, dynamic>{
  'playback_speed': instance.playbackSpeed,
  'sleep_timer_minutes': instance.sleepTimerMinutes,
  'auto_download': instance.autoDownload,
};
