// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressEntityImpl _$$ProgressEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProgressEntityImpl(
      audioId: (json['audioId'] as num?)?.toInt() ?? 0,
      lastPosition: (json['lastPosition'] as num?)?.toInt() ?? 0,
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      percentage: (json['percentage'] as num?)?.toDouble() ?? 0.0,
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProgressEntityImplToJson(
  _$ProgressEntityImpl instance,
) => <String, dynamic>{
  'audioId': instance.audioId,
  'lastPosition': instance.lastPosition,
  'duration': instance.duration,
  'percentage': instance.percentage,
  'completed': instance.completed,
};
