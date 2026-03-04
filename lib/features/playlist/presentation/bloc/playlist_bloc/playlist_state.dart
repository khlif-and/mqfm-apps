import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist_entity.dart';

part 'playlist_state.freezed.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState.initial() = PlaylistInitial;
  const factory PlaylistState.loading() = PlaylistLoading;
  const factory PlaylistState.loaded({
    required List<PlaylistEntity> playlists,
  }) = PlaylistLoaded;
  const factory PlaylistState.detailLoaded({required PlaylistEntity playlist}) =
      PlaylistDetailLoaded;
  const factory PlaylistState.created({required PlaylistEntity playlist}) =
      PlaylistCreated;
  const factory PlaylistState.audioAdded() = PlaylistAudioAdded;
  const factory PlaylistState.error({required String message}) = PlaylistError;
}
