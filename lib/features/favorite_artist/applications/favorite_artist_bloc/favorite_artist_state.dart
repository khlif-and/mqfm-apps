import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/favorite_artist/domain/entities/favorite_artist.dart';

part 'favorite_artist_state.freezed.dart';

@freezed
class FavoriteArtistState with _$FavoriteArtistState {
  const factory FavoriteArtistState.initial() = FavoriteArtistInitial;
  const factory FavoriteArtistState.loading() = FavoriteArtistLoading;
  const factory FavoriteArtistState.loaded(
          {required List<FavoriteArtistEntity> artists}) =
      FavoriteArtistLoaded;
  const factory FavoriteArtistState.actionSuccess({required String message}) =
      FavoriteArtistActionSuccess;
  const factory FavoriteArtistState.error({required String message}) =
      FavoriteArtistError;
}
