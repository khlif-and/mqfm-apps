// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadDto _$DownloadDtoFromJson(Map<String, dynamic> json) => DownloadDto(
  id: (json['id'] as num).toInt(),
  audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? '',
  artist: json['artist'] as String? ?? '',
  filePath: json['file_path'] as String? ?? '',
  fileSize: (json['file_size'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] as String? ?? '',
);

Map<String, dynamic> _$DownloadDtoToJson(DownloadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'audio_id': instance.audioId,
      'title': instance.title,
      'artist': instance.artist,
      'file_path': instance.filePath,
      'file_size': instance.fileSize,
      'created_at': instance.createdAt,
    };

DownloadStorageDto _$DownloadStorageDtoFromJson(Map<String, dynamic> json) =>
    DownloadStorageDto(
      totalFiles: (json['total_files'] as num?)?.toInt() ?? 0,
      totalSizeBytes: (json['total_size_bytes'] as num?)?.toInt() ?? 0,
      formattedSize: json['formatted_size'] as String? ?? '',
    );

Map<String, dynamic> _$DownloadStorageDtoToJson(DownloadStorageDto instance) =>
    <String, dynamic>{
      'total_files': instance.totalFiles,
      'total_size_bytes': instance.totalSizeBytes,
      'formatted_size': instance.formattedSize,
    };
