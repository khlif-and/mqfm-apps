// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesItemDto _$SeriesItemDtoFromJson(Map<String, dynamic> json) =>
    SeriesItemDto(
      id: (json['id'] as num).toInt(),
      seriesId: (json['series_id'] as num?)?.toInt() ?? 0,
      audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
      audio: json['audio'] == null
          ? null
          : AudioDto.fromJson(json['audio'] as Map<String, dynamic>),
      orderNum: (json['order_num'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SeriesItemDtoToJson(SeriesItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'series_id': instance.seriesId,
      'audio_id': instance.audioId,
      'audio': instance.audio,
      'order_num': instance.orderNum,
    };

SeriesDto _$SeriesDtoFromJson(Map<String, dynamic> json) => SeriesDto(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  artist: json['artist'] as String? ?? '',
  imageUrl: json['image'] as String? ?? '',
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SeriesItemDto.fromJson(e as Map<String, dynamic>))
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
  'image': instance.imageUrl,
  'items': instance.items,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
