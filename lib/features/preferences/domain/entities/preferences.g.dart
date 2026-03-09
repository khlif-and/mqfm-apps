// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferencesEntityImpl _$$PreferencesEntityImplFromJson(
  Map<String, dynamic> json,
) => _$PreferencesEntityImpl(
  playbackSpeed: (json['playbackSpeed'] as num?)?.toDouble() ?? 1.0,
  sleepTimerMinutes: (json['sleepTimerMinutes'] as num?)?.toInt() ?? 0,
  autoDownload: json['autoDownload'] as bool? ?? false,
);

Map<String, dynamic> _$$PreferencesEntityImplToJson(
  _$PreferencesEntityImpl instance,
) => <String, dynamic>{
  'playbackSpeed': instance.playbackSpeed,
  'sleepTimerMinutes': instance.sleepTimerMinutes,
  'autoDownload': instance.autoDownload,
};
