import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_event.freezed.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.fetch() = PlaylistFetch;
  const factory PlaylistEvent.fetchDetail({required int id}) =
      PlaylistFetchDetail;
  const factory PlaylistEvent.create({required String name}) = PlaylistCreate;
  const factory PlaylistEvent.createFromAudio({
    required String name,
    required int audioId,
  }) = PlaylistCreateFromAudio;
  const factory PlaylistEvent.update({
    required int id,
    String? name,
  }) = PlaylistUpdate;
  const factory PlaylistEvent.delete({required int id}) = PlaylistDelete;
  const factory PlaylistEvent.addAudio({
    required int playlistId,
    required int audioId,
  }) = PlaylistAddAudio;
  const factory PlaylistEvent.removeAudio({
    required int playlistId,
    required int audioId,
  }) = PlaylistRemoveAudio;
  const factory PlaylistEvent.share({required int id}) = PlaylistShare;
  const factory PlaylistEvent.search({required String query}) = PlaylistSearch;
}
