// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveProgressRequest _$SaveProgressRequestFromJson(Map<String, dynamic> json) =>
    SaveProgressRequest(
      audioId: (json['audio_id'] as num).toInt(),
      lastPosition: (json['last_position'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$SaveProgressRequestToJson(
  SaveProgressRequest instance,
) => <String, dynamic>{
  'audio_id': instance.audioId,
  'last_position': instance.lastPosition,
  'duration': instance.duration,
};
