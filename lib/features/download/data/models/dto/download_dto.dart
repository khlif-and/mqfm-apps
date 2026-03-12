import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/core/utils/constants/api/api_constants.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/download/domain/entities/download.dart';

part 'download_dto.g.dart';

@JsonSerializable()
class DownloadDto {
  final int id;
  @JsonKey(name: 'user_id', defaultValue: 0)
  final int userId;
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(name: 'playlist_id')
  final int? playlistId;
  final AudioDto? audio;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String artist;
  @JsonKey(defaultValue: '')
  final String thumbnail;
  @JsonKey(name: 'dominant_color', defaultValue: '')
  final String dominantColor;
  @JsonKey(defaultValue: 0)
  final int duration;
  @JsonKey(name: 'duration_fmt', defaultValue: '')
  final String durationFmt;
  @JsonKey(name: 'file_size', defaultValue: 0)
  final int fileSize;
  @JsonKey(name: 'expires_at', defaultValue: '')
  final String expiresAt;
  @JsonKey(name: 'days_remaining', defaultValue: 0)
  final int daysRemaining;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const DownloadDto({
    required this.id,
    this.userId = 0,
    this.audioId = 0,
    this.playlistId,
    this.audio,
    this.title = '',
    this.artist = '',
    this.thumbnail = '',
    this.dominantColor = '',
    this.duration = 0,
    this.durationFmt = '',
    this.fileSize = 0,
    this.expiresAt = '',
    this.daysRemaining = 0,
    this.createdAt = '',
  });

  factory DownloadDto.fromJson(Map<String, dynamic> json) =>
      _$DownloadDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadDtoToJson(this);

  DownloadEntity toEntity() {
    return DownloadEntity(
      id: id,
      userId: userId,
      audioId: audioId,
      playlistId: playlistId,
      audio: audio?.toEntity(),
      title: title,
      artist: artist,
      thumbnail: ApiConstants.buildMediaUrl(thumbnail),
      dominantColor: dominantColor,
      duration: duration,
      durationFmt: durationFmt,
      fileSize: fileSize,
      expiresAt: expiresAt,
      daysRemaining: daysRemaining,
      createdAt: createdAt,
    );
  }
}

@JsonSerializable()
class DownloadStorageDto {
  @JsonKey(name: 'total_bytes', defaultValue: 0)
  final int totalBytes;
  @JsonKey(name: 'total_mb', defaultValue: 0)
  final int totalMb;

  const DownloadStorageDto({
    this.totalBytes = 0,
    this.totalMb = 0,
  });

  factory DownloadStorageDto.fromJson(Map<String, dynamic> json) =>
      _$DownloadStorageDtoFromJson(json);

  DownloadStorageEntity toEntity() {
    return DownloadStorageEntity(
      totalBytes: totalBytes,
      totalMb: totalMb,
    );
  }
}
