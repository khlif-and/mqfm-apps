import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'audio_api_service.g.dart';

@RestApi()
abstract class AudioRemoteDatasource {
  factory AudioRemoteDatasource(Dio dio, {String baseUrl}) =
      _AudioRemoteDatasource;

  @GET('/api/audios')
  Future<BaseResponse<List<AudioDto>>> getAudios();

  @GET('/api/audios/{id}')
  Future<BaseResponse<AudioDto>> getAudioById(@Path('id') int id);

  @GET('/api/audios/search')
  Future<BaseResponse<List<AudioDto>>> searchAudios(@Query('q') String query);

  @GET('/api/user/history')
  Future<dynamic> getHistory();

  @DELETE('/api/user/history/clear')
  Future<BaseResponse<dynamic>> clearHistory();

  @DELETE('/api/user/history/{audioId}')
  Future<BaseResponse<dynamic>> deleteHistoryItem(
      @Path('audioId') int audioId);
}
