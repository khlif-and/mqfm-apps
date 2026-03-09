import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/preferences/data/models/dto/preferences_dto.dart';
import 'package:mqfm_apps/features/preferences/data/models/request/preferences_request.dart';
import 'package:retrofit/retrofit.dart';

part 'preferences_api_service.g.dart';

@RestApi()
abstract class PreferencesRemoteDatasource {
  factory PreferencesRemoteDatasource(Dio dio, {String baseUrl}) =
      _PreferencesRemoteDatasource;

  @GET('/api/user/preferences/')
  Future<BaseResponse<PreferencesDto>> getPreferences();

  @PUT('/api/user/preferences/')
  Future<BaseResponse<dynamic>> updatePreferences(
      @Body() UpdatePreferencesRequest body);
}
