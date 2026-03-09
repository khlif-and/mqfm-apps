// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookmarkDto _$BookmarkDtoFromJson(Map<String, dynamic> json) => BookmarkDto(
  id: (json['id'] as num).toInt(),
  audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
  positionSeconds: (json['position_seconds'] as num?)?.toInt() ?? 0,
  label: json['label'] as String? ?? '',
  createdAt: json['created_at'] as String? ?? '',
);

Map<String, dynamic> _$BookmarkDtoToJson(BookmarkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'audio_id': instance.audioId,
      'position_seconds': instance.positionSeconds,
      'label': instance.label,
      'created_at': instance.createdAt,
    };
