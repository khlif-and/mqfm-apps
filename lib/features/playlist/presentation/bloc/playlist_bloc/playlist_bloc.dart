import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/playlist/domain/repositories/i_playlist_repository.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_state.dart';

@injectable
class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  final IPlaylistRepository _playlistRepository;

  PlaylistBloc(this._playlistRepository)
    : super(const PlaylistState.initial()) {
    on<PlaylistFetch>(_onFetch);
    on<PlaylistFetchDetail>(_onFetchDetail);
    on<PlaylistCreate>(_onCreate);
    on<PlaylistAddAudio>(_onAddAudio);
  }

  Future<void> _onFetch(
    PlaylistFetch event,
    Emitter<PlaylistState> emit,
  ) async {
    emit(const PlaylistState.loading());
    final result = await _playlistRepository.getPlaylists();
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (playlists) => emit(PlaylistState.loaded(playlists: playlists)),
    );
  }

  Future<void> _onFetchDetail(
    PlaylistFetchDetail event,
    Emitter<PlaylistState> emit,
  ) async {
    emit(const PlaylistState.loading());
    final result = await _playlistRepository.getDetailPlaylist(event.id);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (playlist) => emit(PlaylistState.detailLoaded(playlist: playlist)),
    );
  }

  Future<void> _onCreate(
    PlaylistCreate event,
    Emitter<PlaylistState> emit,
  ) async {
    emit(const PlaylistState.loading());
    final result = await _playlistRepository.createPlaylist(event.name);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (playlist) => emit(PlaylistState.created(playlist: playlist)),
    );
  }

  Future<void> _onAddAudio(
    PlaylistAddAudio event,
    Emitter<PlaylistState> emit,
  ) async {
    final result = await _playlistRepository.addAudioToPlaylist(
      event.playlistId,
      event.audioId,
    );
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (_) => emit(const PlaylistState.audioAdded()),
    );
  }
}
