// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveResumeRequest _$SaveResumeRequestFromJson(Map<String, dynamic> json) =>
    SaveResumeRequest(
      audioId: (json['audio_id'] as num).toInt(),
      positionSeconds: (json['position_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$SaveResumeRequestToJson(SaveResumeRequest instance) =>
    <String, dynamic>{
      'audio_id': instance.audioId,
      'position_seconds': instance.positionSeconds,
    };
