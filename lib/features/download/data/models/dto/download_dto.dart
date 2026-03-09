import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/download/domain/entities/download.dart';

part 'download_dto.g.dart';

@JsonSerializable()
class DownloadDto {
  final int id;
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String artist;
  @JsonKey(name: 'file_path', defaultValue: '')
  final String filePath;
  @JsonKey(name: 'file_size', defaultValue: 0)
  final int fileSize;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const DownloadDto({
    required this.id,
    this.audioId = 0,
    this.title = '',
    this.artist = '',
    this.filePath = '',
    this.fileSize = 0,
    this.createdAt = '',
  });

  factory DownloadDto.fromJson(Map<String, dynamic> json) =>
      _$DownloadDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadDtoToJson(this);

  DownloadEntity toEntity() {
    return DownloadEntity(
      id: id,
      audioId: audioId,
      title: title,
      artist: artist,
      filePath: filePath,
      fileSize: fileSize,
      createdAt: createdAt,
    );
  }
}

@JsonSerializable()
class DownloadStorageDto {
  @JsonKey(name: 'total_files', defaultValue: 0)
  final int totalFiles;
  @JsonKey(name: 'total_size_bytes', defaultValue: 0)
  final int totalSizeBytes;
  @JsonKey(name: 'formatted_size', defaultValue: '')
  final String formattedSize;

  const DownloadStorageDto({
    this.totalFiles = 0,
    this.totalSizeBytes = 0,
    this.formattedSize = '',
  });

  factory DownloadStorageDto.fromJson(Map<String, dynamic> json) =>
      _$DownloadStorageDtoFromJson(json);

  DownloadStorageEntity toEntity() {
    return DownloadStorageEntity(
      totalFiles: totalFiles,
      totalSizeBytes: totalSizeBytes,
      formattedSize: formattedSize,
    );
  }
}
