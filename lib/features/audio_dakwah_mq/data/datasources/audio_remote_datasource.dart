import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/audio/data/models/audio_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'audio_remote_datasource.g.dart';

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

  @GET('/api/user/history/')
  Future<BaseResponse<List<PlayHistoryDto>>> getPlayHistory();
}
