import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/share/data/models/dto/share_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'share_api_service.g.dart';

@RestApi()
abstract class ShareRemoteDatasource {
  factory ShareRemoteDatasource(Dio dio, {String baseUrl}) =
      _ShareRemoteDatasource;

  @GET('/api/user/share/audio/{audioId}')
  Future<BaseResponse<ShareDto>> shareAudio(@Path('audioId') int audioId);

  @GET('/api/shared/clip/{token}')
  Future<BaseResponse<dynamic>> getSharedClip(@Path('token') String token);

  @GET('/api/shared/playlist/{token}')
  Future<BaseResponse<dynamic>> getSharedPlaylist(
      @Path('token') String token);
}
