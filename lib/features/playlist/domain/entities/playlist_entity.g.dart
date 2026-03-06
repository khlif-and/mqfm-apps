// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistEntityImpl _$$PlaylistEntityImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistEntityImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      audios: (json['audios'] as List<dynamic>)
          .map((e) => AudioEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$PlaylistEntityImplToJson(
  _$PlaylistEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'audios': instance.audios,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
