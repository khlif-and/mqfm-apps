import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/clip/data/models/dto/clip_dto.dart';
import 'package:mqfm_apps/features/clip/data/models/request/clip_request.dart';
import 'package:retrofit/retrofit.dart';

part 'clip_api_service.g.dart';

@RestApi()
abstract class ClipRemoteDatasource {
  factory ClipRemoteDatasource(Dio dio, {String baseUrl}) =
      _ClipRemoteDatasource;

  @POST('/api/user/clips/')
  Future<BaseResponse<ClipDto>> createClip(@Body() CreateClipRequest body);

  @GET('/api/user/clips/')
  Future<BaseResponse<List<ClipDto>>> getClips();

  @DELETE('/api/user/clips/{id}')
  Future<BaseResponse<dynamic>> deleteClip(@Path('id') int id);
}
