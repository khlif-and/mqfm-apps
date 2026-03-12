// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_playlist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePlaylistFromAudioRequest _$CreatePlaylistFromAudioRequestFromJson(
  Map<String, dynamic> json,
) => CreatePlaylistFromAudioRequest(
  name: json['name'] as String,
  audioId: (json['audio_id'] as num).toInt(),
);

Map<String, dynamic> _$CreatePlaylistFromAudioRequestToJson(
  CreatePlaylistFromAudioRequest instance,
) => <String, dynamic>{'name': instance.name, 'audio_id': instance.audioId};

PlaylistAudioRequest _$PlaylistAudioRequestFromJson(
  Map<String, dynamic> json,
) => PlaylistAudioRequest(
  playlistId: (json['playlist_id'] as num).toInt(),
  audioId: (json['audio_id'] as num).toInt(),
);

Map<String, dynamic> _$PlaylistAudioRequestToJson(
  PlaylistAudioRequest instance,
) => <String, dynamic>{
  'playlist_id': instance.playlistId,
  'audio_id': instance.audioId,
};
