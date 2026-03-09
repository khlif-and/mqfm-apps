import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/progress/data/models/dto/progress_dto.dart';
import 'package:mqfm_apps/features/progress/data/models/request/progress_request.dart';
import 'package:retrofit/retrofit.dart';

part 'progress_api_service.g.dart';

@RestApi()
abstract class ProgressRemoteDatasource {
  factory ProgressRemoteDatasource(Dio dio, {String baseUrl}) =
      _ProgressRemoteDatasource;

  @POST('/api/user/progress/')
  Future<BaseResponse<dynamic>> saveProgress(
      @Body() SaveProgressRequest body);

  @GET('/api/user/progress/')
  Future<BaseResponse<List<ProgressDto>>> getAllProgress();

  @GET('/api/user/progress/completed')
  Future<BaseResponse<List<ProgressDto>>> getCompleted();

  @GET('/api/user/progress/{audioId}')
  Future<BaseResponse<ProgressDto>> getProgressByAudio(
      @Path('audioId') int audioId);
}
