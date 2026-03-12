// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistDto _$PlaylistDtoFromJson(Map<String, dynamic> json) => PlaylistDto(
  id: (json['id'] as num).toInt(),
  userId: (json['user_id'] as num?)?.toInt() ?? 0,
  creatorRole: json['creator_role'] as String? ?? 'user',
  name: json['name'] as String? ?? '',
  imageUrl: json['image_url'] as String?,
  dominantColor: json['dominant_color'] as String? ?? '',
  shareToken: json['share_token'] as String? ?? '',
  isPublic: json['is_public'] as bool? ?? false,
  timeSince: json['time_since'] as String? ?? '',
  audioCount: (json['audio_count'] as num?)?.toInt() ?? 0,
  audios: (json['audios'] as List<dynamic>?)
      ?.map((e) => AudioDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['created_at'] as String? ?? '',
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$PlaylistDtoToJson(PlaylistDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'creator_role': instance.creatorRole,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'dominant_color': instance.dominantColor,
      'share_token': instance.shareToken,
      'is_public': instance.isPublic,
      'time_since': instance.timeSince,
      'audio_count': instance.audioCount,
      'audios': instance.audios,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
