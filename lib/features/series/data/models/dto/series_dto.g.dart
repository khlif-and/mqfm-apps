// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesDto _$SeriesDtoFromJson(Map<String, dynamic> json) => SeriesDto(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  artist: json['artist'] as String? ?? '',
  imageUrl: json['image_url'] as String? ?? '',
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => AudioDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  createdAt: json['created_at'] as String? ?? '',
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$SeriesDtoToJson(SeriesDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'artist': instance.artist,
  'image_url': instance.imageUrl,
  'items': instance.items,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
