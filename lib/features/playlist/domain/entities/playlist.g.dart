// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistEntityImpl _$$PlaylistEntityImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistEntityImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      creatorRole: json['creatorRole'] as String? ?? 'user',
      name: json['name'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      dominantColor: json['dominantColor'] as String? ?? '',
      shareToken: json['shareToken'] as String? ?? '',
      isPublic: json['isPublic'] as bool? ?? false,
      timeSince: json['timeSince'] as String? ?? '',
      audioCount: (json['audioCount'] as num?)?.toInt() ?? 0,
      audios:
          (json['audios'] as List<dynamic>?)
              ?.map((e) => AudioEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$PlaylistEntityImplToJson(
  _$PlaylistEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'creatorRole': instance.creatorRole,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'dominantColor': instance.dominantColor,
  'shareToken': instance.shareToken,
  'isPublic': instance.isPublic,
  'timeSince': instance.timeSince,
  'audioCount': instance.audioCount,
  'audios': instance.audios,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
