import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/stats/data/datasources/remotes/stats_api_service.dart';
import 'package:mqfm_apps/features/stats/data/models/request/stats_request.dart';
import 'package:mqfm_apps/features/stats/domain/entities/stats.dart';
import 'package:mqfm_apps/features/stats/domain/interfaces/i_stats_repository.dart';

@LazySingleton(as: IStatsRepository)
class StatsRepositoryImpl implements IStatsRepository {
  final StatsRemoteDatasource _datasource;

  StatsRepositoryImpl(this._datasource);

  @override
  Future<Either<String, String>> recordStats(
      int audioId, int listenedSeconds) async {
    try {
      final response = await _datasource.recordStats(
        RecordStatsRequest(audioId: audioId, listenedSeconds: listenedSeconds),
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
  Future<Either<String, StatsRecapEntity>> getRecap() async {
    try {
      final response = await _datasource.getRecap();
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
