import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/progress/data/datasources/remotes/progress_api_service.dart';
import 'package:mqfm_apps/features/progress/data/models/request/progress_request.dart';
import 'package:mqfm_apps/features/progress/domain/entities/progress.dart';
import 'package:mqfm_apps/features/progress/domain/interfaces/i_progress_repository.dart';

@LazySingleton(as: IProgressRepository)
class ProgressRepositoryImpl implements IProgressRepository {
  final ProgressRemoteDatasource _datasource;

  ProgressRepositoryImpl(this._datasource);

  @override
  Future<Either<String, String>> saveProgress(
      int audioId, int lastPosition, int duration) async {
    try {
      final response = await _datasource.saveProgress(
        SaveProgressRequest(
          audioId: audioId,
          lastPosition: lastPosition,
          duration: duration,
        ),
      );
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<ProgressEntity>>> getAllProgress() async {
    try {
      final response = await _datasource.getAllProgress();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<ProgressEntity>>> getCompleted() async {
    try {
      final response = await _datasource.getCompleted();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, ProgressEntity>> getProgressByAudio(
      int audioId) async {
    try {
      final response = await _datasource.getProgressByAudio(audioId);
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.toEntity());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
