import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/location/data/models/dto/location_dto.dart';
import 'package:mqfm_apps/features/location/data/models/request/location_request.dart';
import 'package:retrofit/retrofit.dart';

part 'location_api_service.g.dart';

@RestApi()
abstract class LocationRemoteDatasource {
  factory LocationRemoteDatasource(Dio dio, {String baseUrl}) =
      _LocationRemoteDatasource;

  @PUT('/api/user/location/')
  Future<BaseResponse<dynamic>> updateLocation(
      @Body() UpdateLocationRequest body);

  @GET('/api/user/location/')
  Future<BaseResponse<UserLocationDto>> getLocation();
}
