import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'playlist_remote_datasource.g.dart';

@RestApi()
abstract class PlaylistRemoteDatasource {
  factory PlaylistRemoteDatasource(Dio dio, {String baseUrl}) =
      _PlaylistRemoteDatasource;

  @GET('/api/user/playlists/')
  Future<Map<String, dynamic>> getPlaylists();

  @GET('/api/user/playlists/{id}')
  Future<Map<String, dynamic>> getDetailPlaylist(@Path('id') int id);
}
