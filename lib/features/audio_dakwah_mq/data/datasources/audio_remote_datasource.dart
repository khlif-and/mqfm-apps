import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/audio/data/models/audio_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'audio_remote_datasource.g.dart';

@RestApi()
abstract class AudioRemoteDatasource {
  factory AudioRemoteDatasource(Dio dio, {String baseUrl}) =
      _AudioRemoteDatasource;

  @GET('/api/audios')
  Future<AudioResponseDto> getAudios();

  @GET('/api/audios/{id}')
  Future<SingleAudioResponseDto> getAudioById(@Path('id') int id);

  @GET('/api/audios/search')
  Future<AudioResponseDto> searchAudios(@Query('q') String query);

  @GET('/api/user/history/')
  Future<PlayHistoryResponseDto> getPlayHistory();
}
