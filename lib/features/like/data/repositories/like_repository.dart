import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/like/data/datasources/remotes/like_api_service.dart';
import 'package:mqfm_apps/features/like/data/models/request/like_request.dart';
import 'package:mqfm_apps/features/like/domain/entities/like.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/like/domain/interfaces/i_like_repository.dart';

@LazySingleton(as: ILikeRepository)
class LikeRepositoryImpl implements ILikeRepository {
  final LikeRemoteDatasource _datasource;
  final Dio _dio;

  LikeRepositoryImpl(this._datasource, this._dio);

  @override
  Future<Either<String, LikeEntity>> toggleLike(int audioId) async {
    try {
      final response = await _datasource.toggleLike(
        ToggleLikeRequest(audioId: audioId),
      );
      return Right(LikeEntity(
        status: response.status,
        message: response.message,
      ));
    } on DioException catch (e) {
      final data = e.response?.data;
      if (data is Map && data['errors'] == 'Audio already liked') {
        return const Right(LikeEntity(status: 200, message: 'Audio sudah disukai'));
      }
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> unlikeAudio(int audioId) async {
    try {
      await _datasource.unlikeAudio(audioId);
      return const Right(true);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<AudioEntity>>> getLikedAudios() async {
    try {
      final json = await _datasource.getLikedAudios() as Map<String, dynamic>;
      if (json['data'] != null && json['data'] is List) {
        final List rawData = json['data'];
        final hasAudioKey = rawData.isNotEmpty &&
            rawData.first is Map &&
            (rawData.first as Map).containsKey('audio') &&
            (rawData.first as Map)['audio'] != null;
        if (hasAudioKey) {
          final audios = rawData
              .map((item) {
                final audioJson = (item as Map)['audio'];
                if (audioJson == null) return null;
                return AudioDto.fromJson(Map<String, dynamic>.from(audioJson)).toEntity();
              })
              .whereType<AudioEntity>()
              .toList();
          return Right(audios);
        }
        final audioIds = rawData
            .map((item) => (item as Map<String, dynamic>)['audio_id'] as int?)
            .whereType<int>()
            .toList();
        final futures = audioIds.map((id) async {
          try {
            final response = await _dio.get('/api/audios/$id');
            final data = response.data as Map<String, dynamic>;
            if (data['status'] == 200 && data['data'] != null) {
              return AudioDto.fromJson(Map<String, dynamic>.from(data['data'])).toEntity();
            }
          } catch (_) {}
          return null;
        });
        final results = await Future.wait(futures);
        return Right(results.whereType<AudioEntity>().toList());
      }
      return const Right([]);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
