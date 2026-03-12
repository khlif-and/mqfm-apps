// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioEntityImpl _$$AudioEntityImplFromJson(Map<String, dynamic> json) =>
    _$AudioEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      artist: json['artist'] as String? ?? '',
      description: json['description'] as String? ?? '',
      filePath: json['filePath'] as String? ?? '',
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      durationFmt: json['durationFmt'] as String? ?? '',
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? 'active',
      categoryId: (json['categoryId'] as num?)?.toInt() ?? 0,
      thumbnail: json['thumbnail'] as String? ?? '',
      dominantColor: json['dominantColor'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$AudioEntityImplToJson(_$AudioEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artist': instance.artist,
      'description': instance.description,
      'filePath': instance.filePath,
      'duration': instance.duration,
      'durationFmt': instance.durationFmt,
      'fileSize': instance.fileSize,
      'status': instance.status,
      'categoryId': instance.categoryId,
      'thumbnail': instance.thumbnail,
      'dominantColor': instance.dominantColor,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
