import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/download/data/models/dto/download_dto.dart';
import 'package:mqfm_apps/features/download/data/models/request/download_request.dart';
import 'package:retrofit/retrofit.dart';

part 'download_api_service.g.dart';

@RestApi()
abstract class DownloadRemoteDatasource {
  factory DownloadRemoteDatasource(Dio dio, {String baseUrl}) =
      _DownloadRemoteDatasource;

  @POST('/api/user/downloads/')
  Future<BaseResponse<dynamic>> createDownload(
      @Body() CreateDownloadRequest body);

  @GET('/api/user/downloads/')
  Future<BaseResponse<List<DownloadDto>>> getDownloads();

  @DELETE('/api/user/downloads/{id}')
  Future<BaseResponse<dynamic>> deleteDownload(@Path('id') int id);

  @GET('/api/user/downloads/storage')
  Future<BaseResponse<DownloadStorageDto>> getStorage();

  @GET('/api/user/downloads/smart')
  Future<BaseResponse<List<DownloadDto>>> getSmartDownloads();
}
