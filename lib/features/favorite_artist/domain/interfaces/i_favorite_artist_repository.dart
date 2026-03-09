import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/favorite_artist/domain/entities/favorite_artist.dart';

abstract class IFavoriteArtistRepository {
  Future<Either<String, String>> addFavoriteArtist(String artistName);
  Future<Either<String, String>> removeFavoriteArtist(int id);
  Future<Either<String, List<FavoriteArtistEntity>>> getFavoriteArtists();
}
