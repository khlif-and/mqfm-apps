import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/playlist/domain/interfaces/i_playlist_repository.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_state.dart';

@injectable
class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  final IPlaylistRepository _repository;

  PlaylistBloc(this._repository) : super(const PlaylistState.initial()) {
    on<PlaylistFetch>(_onFetch);
    on<PlaylistFetchDetail>(_onFetchDetail);
    on<PlaylistCreate>(_onCreate);
    on<PlaylistCreateFromAudio>(_onCreateFromAudio);
    on<PlaylistUpdate>(_onUpdate);
    on<PlaylistDelete>(_onDelete);
    on<PlaylistAddAudio>(_onAddAudio);
    on<PlaylistRemoveAudio>(_onRemoveAudio);
    on<PlaylistShare>(_onShare);
    on<PlaylistSearch>(_onSearch);
  }

  Future<void> _onFetch(PlaylistFetch event, Emitter<PlaylistState> emit) async {
    emit(const PlaylistState.loading());
    final result = await _repository.getPlaylists();
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (playlists) => emit(PlaylistState.loaded(playlists: playlists)),
    );
  }

  Future<void> _onFetchDetail(PlaylistFetchDetail event, Emitter<PlaylistState> emit) async {
    emit(const PlaylistState.loading());
    final result = await _repository.getDetail(event.id);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (playlist) => emit(PlaylistState.detailLoaded(playlist: playlist)),
    );
  }

  Future<void> _onCreate(PlaylistCreate event, Emitter<PlaylistState> emit) async {
    emit(const PlaylistState.loading());
    final result = await _repository.create(event.name);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (playlist) => emit(PlaylistState.created(playlist: playlist)),
    );
  }

  Future<void> _onCreateFromAudio(PlaylistCreateFromAudio event, Emitter<PlaylistState> emit) async {
    emit(const PlaylistState.loading());
    final result = await _repository.createFromAudio(name: event.name, audioId: event.audioId);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (playlist) => emit(PlaylistState.created(playlist: playlist)),
    );
  }

  Future<void> _onUpdate(PlaylistUpdate event, Emitter<PlaylistState> emit) async {
    emit(const PlaylistState.loading());
    final result = await _repository.update(event.id, name: event.name);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (_) => emit(const PlaylistState.actionSuccess(message: 'Playlist diperbarui')),
    );
  }

  Future<void> _onDelete(PlaylistDelete event, Emitter<PlaylistState> emit) async {
    emit(const PlaylistState.loading());
    final result = await _repository.delete(event.id);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (_) => emit(const PlaylistState.actionSuccess(message: 'Playlist dihapus')),
    );
  }

  Future<void> _onAddAudio(PlaylistAddAudio event, Emitter<PlaylistState> emit) async {
    final result = await _repository.addAudio(event.playlistId, event.audioId);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (_) => emit(const PlaylistState.actionSuccess(message: 'Audio ditambahkan')),
    );
  }

  Future<void> _onRemoveAudio(PlaylistRemoveAudio event, Emitter<PlaylistState> emit) async {
    final result = await _repository.removeAudio(event.playlistId, event.audioId);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (_) => emit(const PlaylistState.actionSuccess(message: 'Audio dihapus dari playlist')),
    );
  }

  Future<void> _onShare(PlaylistShare event, Emitter<PlaylistState> emit) async {
    final result = await _repository.share(event.id);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (token) => emit(PlaylistState.shared(shareToken: token)),
    );
  }

  Future<void> _onSearch(PlaylistSearch event, Emitter<PlaylistState> emit) async {
    emit(const PlaylistState.loading());
    final result = await _repository.search(event.query);
    result.fold(
      (error) => emit(PlaylistState.error(message: error)),
      (playlists) => emit(PlaylistState.loaded(playlists: playlists)),
    );
  }
}
