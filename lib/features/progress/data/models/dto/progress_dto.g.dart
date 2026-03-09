// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgressDto _$ProgressDtoFromJson(Map<String, dynamic> json) => ProgressDto(
  audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
  lastPosition: (json['last_position'] as num?)?.toInt() ?? 0,
  duration: (json['duration'] as num?)?.toInt() ?? 0,
  percentage: (json['percentage'] as num?)?.toDouble() ?? 0.0,
  completed: json['completed'] as bool? ?? false,
);

Map<String, dynamic> _$ProgressDtoToJson(ProgressDto instance) =>
    <String, dynamic>{
      'audio_id': instance.audioId,
      'last_position': instance.lastPosition,
      'duration': instance.duration,
      'percentage': instance.percentage,
      'completed': instance.completed,
    };
