import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/stats/domain/entities/stats.dart';

abstract class IStatsRepository {
  Future<Either<String, String>> recordStats(int audioId, int listenedSeconds);
  Future<Either<String, StatsRecapEntity>> getRecap();
}
