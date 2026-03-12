// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadDto _$DownloadDtoFromJson(Map<String, dynamic> json) => DownloadDto(
  id: (json['id'] as num).toInt(),
  userId: (json['user_id'] as num?)?.toInt() ?? 0,
  audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
  playlistId: (json['playlist_id'] as num?)?.toInt(),
  audio: json['audio'] == null
      ? null
      : AudioDto.fromJson(json['audio'] as Map<String, dynamic>),
  title: json['title'] as String? ?? '',
  artist: json['artist'] as String? ?? '',
  thumbnail: json['thumbnail'] as String? ?? '',
  dominantColor: json['dominant_color'] as String? ?? '',
  duration: (json['duration'] as num?)?.toInt() ?? 0,
  durationFmt: json['duration_fmt'] as String? ?? '',
  fileSize: (json['file_size'] as num?)?.toInt() ?? 0,
  expiresAt: json['expires_at'] as String? ?? '',
  daysRemaining: (json['days_remaining'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] as String? ?? '',
);

Map<String, dynamic> _$DownloadDtoToJson(DownloadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'audio_id': instance.audioId,
      'playlist_id': instance.playlistId,
      'audio': instance.audio,
      'title': instance.title,
      'artist': instance.artist,
      'thumbnail': instance.thumbnail,
      'dominant_color': instance.dominantColor,
      'duration': instance.duration,
      'duration_fmt': instance.durationFmt,
      'file_size': instance.fileSize,
      'expires_at': instance.expiresAt,
      'days_remaining': instance.daysRemaining,
      'created_at': instance.createdAt,
    };

DownloadStorageDto _$DownloadStorageDtoFromJson(Map<String, dynamic> json) =>
    DownloadStorageDto(
      totalBytes: (json['total_bytes'] as num?)?.toInt() ?? 0,
      totalMb: (json['total_mb'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DownloadStorageDtoToJson(DownloadStorageDto instance) =>
    <String, dynamic>{
      'total_bytes': instance.totalBytes,
      'total_mb': instance.totalMb,
    };
