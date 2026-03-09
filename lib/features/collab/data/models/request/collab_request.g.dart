// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collab_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCollaboratorRequest _$AddCollaboratorRequestFromJson(
  Map<String, dynamic> json,
) => AddCollaboratorRequest(
  playlistId: (json['playlist_id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
);

Map<String, dynamic> _$AddCollaboratorRequestToJson(
  AddCollaboratorRequest instance,
) => <String, dynamic>{
  'playlist_id': instance.playlistId,
  'user_id': instance.userId,
};

ContributeAudioRequest _$ContributeAudioRequestFromJson(
  Map<String, dynamic> json,
) => ContributeAudioRequest(
  playlistId: (json['playlist_id'] as num).toInt(),
  audioId: (json['audio_id'] as num).toInt(),
);

Map<String, dynamic> _$ContributeAudioRequestToJson(
  ContributeAudioRequest instance,
) => <String, dynamic>{
  'playlist_id': instance.playlistId,
  'audio_id': instance.audioId,
};

JoinCollabRequest _$JoinCollabRequestFromJson(Map<String, dynamic> json) =>
    JoinCollabRequest(playlistId: (json['playlist_id'] as num).toInt());

Map<String, dynamic> _$JoinCollabRequestToJson(JoinCollabRequest instance) =>
    <String, dynamic>{'playlist_id': instance.playlistId};
