import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_playlist_event.freezed.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.fetch() = PlaylistFetch;
  const factory PlaylistEvent.fetchDetail({required int id}) =
      PlaylistFetchDetail;
  const factory PlaylistEvent.create({required String name}) = PlaylistCreate;
  const factory PlaylistEvent.addAudio({
    required int playlistId,
    required int audioId,
  }) = PlaylistAddAudio;
}
