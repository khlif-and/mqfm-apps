import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/auth/data/models/login_request.dart';
import 'package:mqfm_apps/features/auth/data/models/user_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
abstract class AuthRemoteDatasource {
  factory AuthRemoteDatasource(Dio dio, {String baseUrl}) =
      _AuthRemoteDatasource;

  @POST('/api/user/auth/login')
  Future<BaseResponse<UserDto>> login(@Body() LoginRequest body);

  @POST('/api/user/auth/google')
  Future<BaseResponse<UserDto>> googleLogin(
      @Body() Map<String, dynamic> body);

  @GET('/api/user/auth/me')
  Future<BaseResponse<UserDto>> me();

  @POST('/api/user/auth/logout')
  Future<BaseResponse<dynamic>> logout();
}
