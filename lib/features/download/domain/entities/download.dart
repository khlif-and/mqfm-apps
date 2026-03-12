import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'download.freezed.dart';
part 'download.g.dart';

@freezed
class DownloadEntity with _$DownloadEntity {
  const factory DownloadEntity({
    required int id,
    @Default(0) int userId,
    @Default(0) int audioId,
    int? playlistId,
    AudioEntity? audio,
    @Default('') String title,
    @Default('') String artist,
    @Default('') String thumbnail,
    @Default('') String dominantColor,
    @Default(0) int duration,
    @Default('') String durationFmt,
    @Default(0) int fileSize,
    @Default('') String expiresAt,
    @Default(0) int daysRemaining,
    @Default('') String createdAt,
  }) = _DownloadEntity;

  factory DownloadEntity.fromJson(Map<String, dynamic> json) =>
      _$DownloadEntityFromJson(json);
}

@freezed
class DownloadStorageEntity with _$DownloadStorageEntity {
  const factory DownloadStorageEntity({
    @Default(0) int totalBytes,
    @Default(0) int totalMb,
  }) = _DownloadStorageEntity;

  factory DownloadStorageEntity.fromJson(Map<String, dynamic> json) =>
      _$DownloadStorageEntityFromJson(json);
}
