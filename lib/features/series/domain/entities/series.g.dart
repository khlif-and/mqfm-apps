// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeriesEntityImpl _$$SeriesEntityImplFromJson(Map<String, dynamic> json) =>
    _$SeriesEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      artist: json['artist'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => AudioEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$SeriesEntityImplToJson(_$SeriesEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'artist': instance.artist,
      'imageUrl': instance.imageUrl,
      'items': instance.items,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
