import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/favorite_artist/data/models/dto/favorite_artist_dto.dart';
import 'package:mqfm_apps/features/favorite_artist/data/models/request/favorite_artist_request.dart';
import 'package:retrofit/retrofit.dart';

part 'favorite_artist_api_service.g.dart';

@RestApi()
abstract class FavoriteArtistRemoteDatasource {
  factory FavoriteArtistRemoteDatasource(Dio dio, {String baseUrl}) =
      _FavoriteArtistRemoteDatasource;

  @POST('/api/user/favorite-artists/')
  Future<BaseResponse<dynamic>> addFavoriteArtist(
      @Body() AddFavoriteArtistRequest body);

  @DELETE('/api/user/favorite-artists/{id}')
  Future<BaseResponse<dynamic>> removeFavoriteArtist(@Path('id') int id);

  @GET('/api/user/favorite-artists/')
  Future<BaseResponse<List<FavoriteArtistDto>>> getFavoriteArtists();
}
