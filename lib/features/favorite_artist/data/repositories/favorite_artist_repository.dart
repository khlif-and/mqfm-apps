import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/favorite_artist/data/datasources/remotes/favorite_artist_api_service.dart';
import 'package:mqfm_apps/features/favorite_artist/data/models/request/favorite_artist_request.dart';
import 'package:mqfm_apps/features/favorite_artist/domain/entities/favorite_artist.dart';
import 'package:mqfm_apps/features/favorite_artist/domain/interfaces/i_favorite_artist_repository.dart';

@LazySingleton(as: IFavoriteArtistRepository)
class FavoriteArtistRepositoryImpl implements IFavoriteArtistRepository {
  final FavoriteArtistRemoteDatasource _datasource;

  FavoriteArtistRepositoryImpl(this._datasource);

  @override
  Future<Either<String, String>> addFavoriteArtist(String artistName) async {
    try {
      final response = await _datasource.addFavoriteArtist(
        AddFavoriteArtistRequest(artistName: artistName),
      );
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> removeFavoriteArtist(int id) async {
    try {
      final response = await _datasource.removeFavoriteArtist(id);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<FavoriteArtistEntity>>>
      getFavoriteArtists() async {
    try {
      final response = await _datasource.getFavoriteArtists();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
