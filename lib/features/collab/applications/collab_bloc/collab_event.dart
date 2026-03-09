import 'package:freezed_annotation/freezed_annotation.dart';

part 'collab_event.freezed.dart';

@freezed
class CollabEvent with _$CollabEvent {
  const factory CollabEvent.fetchCollaborators({required int playlistId}) =
      CollabFetchCollaborators;
  const factory CollabEvent.addCollaborator({
    required int playlistId,
    required int userId,
  }) = CollabAddCollaborator;
  const factory CollabEvent.removeCollaborator({
    required int playlistId,
    required int userId,
  }) = CollabRemoveCollaborator;
  const factory CollabEvent.contributeAudio({
    required int playlistId,
    required int audioId,
  }) = CollabContributeAudio;
  const factory CollabEvent.join({required int playlistId}) = CollabJoin;
}
