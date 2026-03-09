import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/stats/data/models/dto/stats_dto.dart';
import 'package:mqfm_apps/features/stats/data/models/request/stats_request.dart';
import 'package:retrofit/retrofit.dart';

part 'stats_api_service.g.dart';

@RestApi()
abstract class StatsRemoteDatasource {
  factory StatsRemoteDatasource(Dio dio, {String baseUrl}) =
      _StatsRemoteDatasource;

  @POST('/api/user/stats/')
  Future<BaseResponse<dynamic>> recordStats(
      @Body() RecordStatsRequest body);

  @GET('/api/user/stats/recap')
  Future<BaseResponse<StatsRecapDto>> getRecap();
}
