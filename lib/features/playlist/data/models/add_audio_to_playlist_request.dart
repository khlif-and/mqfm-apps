import 'package:json_annotation/json_annotation.dart';

part 'add_audio_to_playlist_request.g.dart';

@JsonSerializable()
class AddAudioToPlaylistRequest {
  @JsonKey(name: 'playlist_id')
  final int playlistId;

  @JsonKey(name: 'audio_id')
  final int audioId;

  const AddAudioToPlaylistRequest({
    required this.playlistId,
    required this.audioId,
  });

  factory AddAudioToPlaylistRequest.fromJson(Map<String, dynamic> json) =>
      _$AddAudioToPlaylistRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddAudioToPlaylistRequestToJson(this);
}
