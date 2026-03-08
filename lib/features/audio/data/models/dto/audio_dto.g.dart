// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioDto _$AudioDtoFromJson(Map<String, dynamic> json) => AudioDto(
  audioId: (json['audio_id'] as num).toInt(),
  title: json['title'] as String,
  artist: json['artist'] as String? ?? '',
  description: json['description'] as String? ?? '',
  filePath: json['file_path'] as String? ?? '',
  duration: (json['duration'] as num?)?.toInt() ?? 0,
  status: json['status'] as String? ?? 'active',
  categoryId: (json['category_id'] as num?)?.toInt() ?? 0,
  thumbnail: json['thumbnail'] as String? ?? '',
  dominantColor: json['dominant_color'] as String? ?? '',
  createdAt: json['created_at'] as String? ?? '',
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$AudioDtoToJson(AudioDto instance) => <String, dynamic>{
  'audio_id': instance.audioId,
  'title': instance.title,
  'artist': instance.artist,
  'description': instance.description,
  'file_path': instance.filePath,
  'duration': instance.duration,
  'status': instance.status,
  'category_id': instance.categoryId,
  'thumbnail': instance.thumbnail,
  'dominant_color': instance.dominantColor,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
