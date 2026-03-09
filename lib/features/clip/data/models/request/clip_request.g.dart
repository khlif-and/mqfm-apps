// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateClipRequest _$CreateClipRequestFromJson(Map<String, dynamic> json) =>
    CreateClipRequest(
      audioId: (json['audio_id'] as num).toInt(),
      startTime: (json['start_time'] as num).toInt(),
      endTime: (json['end_time'] as num).toInt(),
    );

Map<String, dynamic> _$CreateClipRequestToJson(CreateClipRequest instance) =>
    <String, dynamic>{
      'audio_id': instance.audioId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
