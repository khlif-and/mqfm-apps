import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/resume/data/models/dto/resume_dto.dart';
import 'package:mqfm_apps/features/resume/data/models/request/resume_request.dart';
import 'package:retrofit/retrofit.dart';

part 'resume_api_service.g.dart';

@RestApi()
abstract class ResumeRemoteDatasource {
  factory ResumeRemoteDatasource(Dio dio, {String baseUrl}) =
      _ResumeRemoteDatasource;

  @POST('/api/user/resume/')
  Future<BaseResponse<dynamic>> saveResume(@Body() SaveResumeRequest body);

  @GET('/api/user/resume/')
  Future<BaseResponse<List<ResumeDto>>> getResumeList();
}
