import 'package:freezed_annotation/freezed_annotation.dart';

part 'download.freezed.dart';
part 'download.g.dart';

@freezed
class DownloadEntity with _$DownloadEntity {
  const factory DownloadEntity({
    required int id,
    @Default(0) int audioId,
    @Default('') String title,
    @Default('') String artist,
    @Default('') String filePath,
    @Default(0) int fileSize,
    @Default('') String createdAt,
  }) = _DownloadEntity;

  factory DownloadEntity.fromJson(Map<String, dynamic> json) =>
      _$DownloadEntityFromJson(json);
}

@freezed
class DownloadStorageEntity with _$DownloadStorageEntity {
  const factory DownloadStorageEntity({
    @Default(0) int totalFiles,
    @Default(0) int totalSizeBytes,
    @Default('') String formattedSize,
  }) = _DownloadStorageEntity;

  factory DownloadStorageEntity.fromJson(Map<String, dynamic> json) =>
      _$DownloadStorageEntityFromJson(json);
}
