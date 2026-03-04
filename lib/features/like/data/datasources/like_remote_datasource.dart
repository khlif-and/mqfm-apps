import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/audio/data/models/audio_dto.dart';
import 'package:mqfm_apps/features/like/data/models/like_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'like_remote_datasource.g.dart';

@RestApi()
abstract class LikeRemoteDatasource {
  factory LikeRemoteDatasource(Dio dio, {String baseUrl}) =
      _LikeRemoteDatasource;

  @POST('/api/user/likes/')
  Future<LikeDto> toggleLike(@Body() Map<String, dynamic> body);

  @DELETE('/api/user/likes/{audioId}')
  Future<void> unlikeAudio(@Path('audioId') int audioId);

  @GET('/api/user/likes/')
  Future<Map<String, dynamic>> getLikedAudios();
}
