import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/download/data/models/dto/download_dto.dart';
import 'package:mqfm_apps/features/download/data/models/request/download_request.dart';

class DownloadRemoteDatasource {
  final Dio _dio;

  DownloadRemoteDatasource(this._dio);

  static const _base = '/api/v1/user/downloads';

  Future<DownloadDto> createDownload(CreateDownloadRequest body) async {
    final response = await _dio.post('$_base/', data: body.toJson());
    return DownloadDto.fromJson(response.data['data']);
  }

  Future<List<DownloadDto>> getDownloads() async {
    final response = await _dio.get('$_base/');
    final list = response.data['data'] as List? ?? [];
    return list.map((e) => DownloadDto.fromJson(e)).toList();
  }

  Future<void> deleteDownload(int id) async {
    await _dio.delete('$_base/$id');
  }

  Future<DownloadStorageDto> getStorage() async {
    final response = await _dio.get('$_base/storage');
    return DownloadStorageDto.fromJson(response.data['data']);
  }

  Future<List<AudioDto>> getSmartDownloads() async {
    final response = await _dio.get('$_base/smart');
    final list = response.data['data'] as List? ?? [];
    return list.map((e) => AudioDto.fromJson(e)).toList();
  }
}
