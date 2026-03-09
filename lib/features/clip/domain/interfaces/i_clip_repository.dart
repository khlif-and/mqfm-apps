import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/clip/domain/entities/clip.dart';

abstract class IClipRepository {
  Future<Either<String, ClipEntity>> createClip(
      int audioId, int startTime, int endTime);
  Future<Either<String, List<ClipEntity>>> getClips();
  Future<Either<String, String>> deleteClip(int id);
}
