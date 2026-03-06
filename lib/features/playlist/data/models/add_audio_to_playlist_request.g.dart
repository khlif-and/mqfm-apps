// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_audio_to_playlist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAudioToPlaylistRequest _$AddAudioToPlaylistRequestFromJson(
  Map<String, dynamic> json,
) => AddAudioToPlaylistRequest(
  playlistId: (json['playlist_id'] as num).toInt(),
  audioId: (json['audio_id'] as num).toInt(),
);

Map<String, dynamic> _$AddAudioToPlaylistRequestToJson(
  AddAudioToPlaylistRequest instance,
) => <String, dynamic>{
  'playlist_id': instance.playlistId,
  'audio_id': instance.audioId,
};
