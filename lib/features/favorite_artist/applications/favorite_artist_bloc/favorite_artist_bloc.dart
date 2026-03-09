import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/favorite_artist/applications/favorite_artist_bloc/favorite_artist_event.dart';
import 'package:mqfm_apps/features/favorite_artist/applications/favorite_artist_bloc/favorite_artist_state.dart';
import 'package:mqfm_apps/features/favorite_artist/domain/interfaces/i_favorite_artist_repository.dart';

@injectable
class FavoriteArtistBloc
    extends Bloc<FavoriteArtistEvent, FavoriteArtistState> {
  final IFavoriteArtistRepository _repository;

  FavoriteArtistBloc(this._repository)
      : super(const FavoriteArtistState.initial()) {
    on<FavoriteArtistFetch>(_onFetch);
    on<FavoriteArtistAdd>(_onAdd);
    on<FavoriteArtistRemove>(_onRemove);
  }

  Future<void> _onFetch(
      FavoriteArtistFetch event, Emitter<FavoriteArtistState> emit) async {
    emit(const FavoriteArtistState.loading());
    final result = await _repository.getFavoriteArtists();
    result.fold(
      (error) => emit(FavoriteArtistState.error(message: error)),
      (artists) => emit(FavoriteArtistState.loaded(artists: artists)),
    );
  }

  Future<void> _onAdd(
      FavoriteArtistAdd event, Emitter<FavoriteArtistState> emit) async {
    emit(const FavoriteArtistState.loading());
    final result = await _repository.addFavoriteArtist(event.artistName);
    result.fold(
      (error) => emit(FavoriteArtistState.error(message: error)),
      (_) => emit(const FavoriteArtistState.actionSuccess(
          message: 'Artis favorit ditambahkan')),
    );
  }

  Future<void> _onRemove(
      FavoriteArtistRemove event, Emitter<FavoriteArtistState> emit) async {
    emit(const FavoriteArtistState.loading());
    final result = await _repository.removeFavoriteArtist(event.id);
    result.fold(
      (error) => emit(FavoriteArtistState.error(message: error)),
      (_) => emit(const FavoriteArtistState.actionSuccess(
          message: 'Artis favorit dihapus')),
    );
  }
}
