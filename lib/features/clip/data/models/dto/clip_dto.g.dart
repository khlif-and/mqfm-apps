// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClipDto _$ClipDtoFromJson(Map<String, dynamic> json) => ClipDto(
  id: (json['id'] as num).toInt(),
  audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
  startTime: (json['start_time'] as num?)?.toInt() ?? 0,
  endTime: (json['end_time'] as num?)?.toInt() ?? 0,
  clipUrl: json['clip_url'] as String? ?? '',
  shareToken: json['share_token'] as String? ?? '',
  createdAt: json['created_at'] as String? ?? '',
);

Map<String, dynamic> _$ClipDtoToJson(ClipDto instance) => <String, dynamic>{
  'id': instance.id,
  'audio_id': instance.audioId,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'clip_url': instance.clipUrl,
  'share_token': instance.shareToken,
  'created_at': instance.createdAt,
};
