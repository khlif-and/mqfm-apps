import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_artist.freezed.dart';
part 'favorite_artist.g.dart';

@freezed
class FavoriteArtistEntity with _$FavoriteArtistEntity {
  const factory FavoriteArtistEntity({
    required int id,
    @Default('') String artistName,
    @Default('') String createdAt,
  }) = _FavoriteArtistEntity;

  factory FavoriteArtistEntity.fromJson(Map<String, dynamic> json) =>
      _$FavoriteArtistEntityFromJson(json);
}
