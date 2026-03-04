import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/audio/data/models/audio_dto.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/like/data/datasources/like_remote_datasource.dart';
import 'package:mqfm_apps/features/like/domain/entities/like_entity.dart';
import 'package:mqfm_apps/features/like/domain/repositories/like_repository.dart';

class LikeRepositoryImpl implements LikeRepository {
  final LikeRemoteDatasource _datasource;

  LikeRepositoryImpl(this._datasource);

  @override
  Future<Either<String, LikeEntity>> toggleLike(int audioId) async {
    try {
      final response = await _datasource.toggleLike({'audio_id': audioId});
      return Right(response.toEntity());
    } on DioException catch (e) {
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
      final json = await _datasource.getLikedAudios();

      if (json['data'] != null && json['data'] is List) {
        final List rawData = json['data'];
        final List mappedData = rawData.map((item) {
          if (item is Map && item.containsKey('audio')) {
            return item['audio'];
          }
          return item;
        }).toList();

        final audios = mappedData
            .map(
              (item) =>
                  AudioDto.fromJson(Map<String, dynamic>.from(item)).toEntity(),
            )
            .toList();

        return Right(audios);
      }

      return const Right([]);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
