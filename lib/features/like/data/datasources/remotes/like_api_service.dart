import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/like/data/models/dto/like_dto.dart';
import 'package:mqfm_apps/features/like/data/models/request/like_request.dart';
import 'package:mqfm_apps/features/like/domain/entities/like.dart';

@lazySingleton
class LikeRemoteDatasource {
  final Dio _dio;
  static const _base = '/api/v1/user/likes';

  LikeRemoteDatasource(this._dio);

  Future<LikeEntity> like(LikeRequest body) async {
    final response = await _dio.post('$_base/', data: body.toJson());
    final data = response.data['data'] as Map<String, dynamic>;
    return LikeDto.fromJson(data).toEntity();
  }

  Future<void> unlike(LikeRequest body) async {
    await _dio.delete('$_base/', data: body.toJson());
  }

  Future<List<AudioEntity>> getLikedAudios({String type = 'audio'}) async {
    final response = await _dio.get('$_base/', queryParameters: {'type': type});
    final list = response.data['data'] as List? ?? [];
    return list
        .map((item) {
          final audioJson = item['audio'] as Map<String, dynamic>?;
          if (audioJson == null) return null;
          return AudioDto.fromJson(audioJson).toEntity();
        })
        .whereType<AudioEntity>()
        .toList();
  }
}
