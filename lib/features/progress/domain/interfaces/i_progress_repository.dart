import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/progress/domain/entities/progress.dart';

abstract class IProgressRepository {
  Future<Either<String, String>> saveProgress(
      int audioId, int lastPosition, int duration);
  Future<Either<String, List<ProgressEntity>>> getAllProgress();
  Future<Either<String, List<ProgressEntity>>> getCompleted();
  Future<Either<String, ProgressEntity>> getProgressByAudio(int audioId);
}
