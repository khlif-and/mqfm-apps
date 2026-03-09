// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadEntityImpl _$$DownloadEntityImplFromJson(Map<String, dynamic> json) =>
    _$DownloadEntityImpl(
      id: (json['id'] as num).toInt(),
      audioId: (json['audioId'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      artist: json['artist'] as String? ?? '',
      filePath: json['filePath'] as String? ?? '',
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$DownloadEntityImplToJson(
  _$DownloadEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'audioId': instance.audioId,
  'title': instance.title,
  'artist': instance.artist,
  'filePath': instance.filePath,
  'fileSize': instance.fileSize,
  'createdAt': instance.createdAt,
};

_$DownloadStorageEntityImpl _$$DownloadStorageEntityImplFromJson(
  Map<String, dynamic> json,
) => _$DownloadStorageEntityImpl(
  totalFiles: (json['totalFiles'] as num?)?.toInt() ?? 0,
  totalSizeBytes: (json['totalSizeBytes'] as num?)?.toInt() ?? 0,
  formattedSize: json['formattedSize'] as String? ?? '',
);

Map<String, dynamic> _$$DownloadStorageEntityImplToJson(
  _$DownloadStorageEntityImpl instance,
) => <String, dynamic>{
  'totalFiles': instance.totalFiles,
  'totalSizeBytes': instance.totalSizeBytes,
  'formattedSize': instance.formattedSize,
};
