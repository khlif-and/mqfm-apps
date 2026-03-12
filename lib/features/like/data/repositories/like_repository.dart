import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/like/data/datasources/remotes/like_api_service.dart';
import 'package:mqfm_apps/features/like/data/models/request/like_request.dart';
import 'package:mqfm_apps/features/like/domain/entities/like.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/like/domain/interfaces/i_like_repository.dart';

@LazySingleton(as: ILikeRepository)
class LikeRepositoryImpl implements ILikeRepository {
  final LikeRemoteDatasource _datasource;

  LikeRepositoryImpl(this._datasource);

  @override
  Future<Either<String, LikeEntity>> like({required String targetType, required int targetId}) async {
    try {
      final entity = await _datasource.like(
        LikeRequest(targetType: targetType, targetId: targetId),
      );
      return Right(entity);
    } on DioException catch (e) {
      return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> unlike({required String targetType, required int targetId}) async {
    try {
      await _datasource.unlike(
        LikeRequest(targetType: targetType, targetId: targetId),
      );
      return const Right(true);
    } on DioException catch (e) {
      return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<AudioEntity>>> getLikedAudios({String type = 'audio'}) async {
    try {
      final audios = await _datasource.getLikedAudios(type: type);
      return Right(audios);
    } on DioException catch (e) {
      return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
