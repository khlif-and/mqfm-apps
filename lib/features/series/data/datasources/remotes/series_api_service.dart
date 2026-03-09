import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/series/data/models/dto/series_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'series_api_service.g.dart';

@RestApi()
abstract class SeriesRemoteDatasource {
  factory SeriesRemoteDatasource(Dio dio, {String baseUrl}) =
      _SeriesRemoteDatasource;

  @GET('/api/series')
  Future<BaseResponse<List<SeriesDto>>> getSeries();

  @GET('/api/series/search')
  Future<BaseResponse<List<SeriesDto>>> searchSeries(
      @Query('q') String query);

  @GET('/api/series/{id}')
  Future<BaseResponse<SeriesDto>> getSeriesById(@Path('id') int id);
}
