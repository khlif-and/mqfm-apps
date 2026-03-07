import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/like/data/models/request/like_request.dart';
import 'package:retrofit/retrofit.dart';

part 'like_api_service.g.dart';

@RestApi()
abstract class LikeRemoteDatasource {
  factory LikeRemoteDatasource(Dio dio, {String baseUrl}) =
      _LikeRemoteDatasource;

  @POST('/api/user/likes/')
  Future<BaseResponse<dynamic>> toggleLike(@Body() ToggleLikeRequest body);

  @DELETE('/api/user/likes/{audioId}')
  Future<void> unlikeAudio(@Path('audioId') int audioId);

  @GET('/api/user/likes/')
  Future<dynamic> getLikedAudios();
}
