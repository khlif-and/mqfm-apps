// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioDto _$AudioDtoFromJson(Map<String, dynamic> json) => AudioDto(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String? ?? '',
  audioUrl: json['audio_url'] as String?,
  thumbnail: json['thumbnail'] as String?,
  categoryId: (json['category_id'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] as String? ?? '',
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$AudioDtoToJson(AudioDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'audio_url': instance.audioUrl,
  'thumbnail': instance.thumbnail,
  'category_id': instance.categoryId,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};

PlayHistoryDto _$PlayHistoryDtoFromJson(Map<String, dynamic> json) =>
    PlayHistoryDto(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      audioId: (json['audio_id'] as num).toInt(),
      playCount: (json['play_count'] as num?)?.toInt() ?? 1,
      playedAt: json['played_at'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$PlayHistoryDtoToJson(PlayHistoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'audio_id': instance.audioId,
      'play_count': instance.playCount,
      'played_at': instance.playedAt,
      'created_at': instance.createdAt,
    };
