// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordStatsRequest _$RecordStatsRequestFromJson(Map<String, dynamic> json) =>
    RecordStatsRequest(
      audioId: (json['audio_id'] as num).toInt(),
      listenedSeconds: (json['listened_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$RecordStatsRequestToJson(RecordStatsRequest instance) =>
    <String, dynamic>{
      'audio_id': instance.audioId,
      'listened_seconds': instance.listenedSeconds,
    };
