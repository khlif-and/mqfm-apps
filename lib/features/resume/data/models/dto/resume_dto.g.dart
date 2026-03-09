// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResumeDto _$ResumeDtoFromJson(Map<String, dynamic> json) => ResumeDto(
  audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
  positionSeconds: (json['position_seconds'] as num?)?.toInt() ?? 0,
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$ResumeDtoToJson(ResumeDto instance) => <String, dynamic>{
  'audio_id': instance.audioId,
  'position_seconds': instance.positionSeconds,
  'updated_at': instance.updatedAt,
};
