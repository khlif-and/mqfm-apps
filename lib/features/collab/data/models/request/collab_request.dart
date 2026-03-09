import 'package:json_annotation/json_annotation.dart';

part 'collab_request.g.dart';

@JsonSerializable()
class AddCollaboratorRequest {
  @JsonKey(name: 'playlist_id')
  final int playlistId;
  @JsonKey(name: 'user_id')
  final int userId;

  const AddCollaboratorRequest({
    required this.playlistId,
    required this.userId,
  });

  factory AddCollaboratorRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCollaboratorRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddCollaboratorRequestToJson(this);
}

@JsonSerializable()
class ContributeAudioRequest {
  @JsonKey(name: 'playlist_id')
  final int playlistId;
  @JsonKey(name: 'audio_id')
  final int audioId;

  const ContributeAudioRequest({
    required this.playlistId,
    required this.audioId,
  });

  factory ContributeAudioRequest.fromJson(Map<String, dynamic> json) =>
      _$ContributeAudioRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ContributeAudioRequestToJson(this);
}

@JsonSerializable()
class JoinCollabRequest {
  @JsonKey(name: 'playlist_id')
  final int playlistId;

  const JoinCollabRequest({required this.playlistId});

  factory JoinCollabRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinCollabRequestFromJson(json);

  Map<String, dynamic> toJson() => _$JoinCollabRequestToJson(this);
}
