// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDownloadRequest _$CreateDownloadRequestFromJson(
  Map<String, dynamic> json,
) => CreateDownloadRequest(
  audioId: (json['audio_id'] as num).toInt(),
  playlistId: (json['playlist_id'] as num?)?.toInt(),
  fileSize: (json['file_size'] as num?)?.toInt(),
);

Map<String, dynamic> _$CreateDownloadRequestToJson(
  CreateDownloadRequest instance,
) => <String, dynamic>{
  'audio_id': instance.audioId,
  if (instance.playlistId case final value?) 'playlist_id': value,
  if (instance.fileSize case final value?) 'file_size': value,
};
