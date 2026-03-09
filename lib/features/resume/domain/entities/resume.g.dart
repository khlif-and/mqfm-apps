// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeEntityImpl _$$ResumeEntityImplFromJson(Map<String, dynamic> json) =>
    _$ResumeEntityImpl(
      audioId: (json['audioId'] as num?)?.toInt() ?? 0,
      positionSeconds: (json['positionSeconds'] as num?)?.toInt() ?? 0,
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$ResumeEntityImplToJson(_$ResumeEntityImpl instance) =>
    <String, dynamic>{
      'audioId': instance.audioId,
      'positionSeconds': instance.positionSeconds,
      'updatedAt': instance.updatedAt,
    };
