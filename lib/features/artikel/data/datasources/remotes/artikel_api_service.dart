import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/artikel/data/models/dto/artikel_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'artikel_api_service.g.dart';

@RestApi()
abstract class ArtikelRemoteDatasource {
  factory ArtikelRemoteDatasource(Dio dio, {String baseUrl}) =
      _ArtikelRemoteDatasource;

  @GET('/api/artikel-dakwah-mq')
  Future<ArtikelChannelDto> getArtikels();
}
