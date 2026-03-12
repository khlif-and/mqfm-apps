// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadEntityImpl _$$DownloadEntityImplFromJson(Map<String, dynamic> json) =>
    _$DownloadEntityImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      audioId: (json['audioId'] as num?)?.toInt() ?? 0,
      playlistId: (json['playlistId'] as num?)?.toInt(),
      audio: json['audio'] == null
          ? null
          : AudioEntity.fromJson(json['audio'] as Map<String, dynamic>),
      title: json['title'] as String? ?? '',
      artist: json['artist'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      dominantColor: json['dominantColor'] as String? ?? '',
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      durationFmt: json['durationFmt'] as String? ?? '',
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      expiresAt: json['expiresAt'] as String? ?? '',
      daysRemaining: (json['daysRemaining'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$DownloadEntityImplToJson(
  _$DownloadEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'audioId': instance.audioId,
  'playlistId': instance.playlistId,
  'audio': instance.audio,
  'title': instance.title,
  'artist': instance.artist,
  'thumbnail': instance.thumbnail,
  'dominantColor': instance.dominantColor,
  'duration': instance.duration,
  'durationFmt': instance.durationFmt,
  'fileSize': instance.fileSize,
  'expiresAt': instance.expiresAt,
  'daysRemaining': instance.daysRemaining,
  'createdAt': instance.createdAt,
};

_$DownloadStorageEntityImpl _$$DownloadStorageEntityImplFromJson(
  Map<String, dynamic> json,
) => _$DownloadStorageEntityImpl(
  totalBytes: (json['totalBytes'] as num?)?.toInt() ?? 0,
  totalMb: (json['totalMb'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$DownloadStorageEntityImplToJson(
  _$DownloadStorageEntityImpl instance,
) => <String, dynamic>{
  'totalBytes': instance.totalBytes,
  'totalMb': instance.totalMb,
};
