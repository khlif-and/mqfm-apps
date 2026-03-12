import 'package:json_annotation/json_annotation.dart';

part 'create_playlist_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatePlaylistFromAudioRequest {
  final String name;
  @JsonKey(name: 'audio_id')
  final int audioId;

  const CreatePlaylistFromAudioRequest({
    required this.name,
    required this.audioId,
  });

  factory CreatePlaylistFromAudioRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePlaylistFromAudioRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePlaylistFromAudioRequestToJson(this);
}

@JsonSerializable(includeIfNull: false)
class PlaylistAudioRequest {
  @JsonKey(name: 'playlist_id')
  final int playlistId;
  @JsonKey(name: 'audio_id')
  final int audioId;

  const PlaylistAudioRequest({
    required this.playlistId,
    required this.audioId,
  });

  factory PlaylistAudioRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaylistAudioRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistAudioRequestToJson(this);
}
