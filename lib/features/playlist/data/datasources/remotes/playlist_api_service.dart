import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'playlist_api_service.g.dart';

@RestApi()
abstract class PlaylistRemoteDatasource {
  factory PlaylistRemoteDatasource(Dio dio, {String baseUrl}) =
      _PlaylistRemoteDatasource;

  @GET('/api/user/playlists/')
  Future<dynamic> getPlaylists();

  @GET('/api/user/playlists/{id}')
  Future<dynamic> getDetailPlaylist(@Path('id') int id);
}
