import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_artist_event.freezed.dart';

@freezed
class FavoriteArtistEvent with _$FavoriteArtistEvent {
  const factory FavoriteArtistEvent.fetch() = FavoriteArtistFetch;
  const factory FavoriteArtistEvent.add({required String artistName}) =
      FavoriteArtistAdd;
  const factory FavoriteArtistEvent.remove({required int id}) =
      FavoriteArtistRemove;
}
