import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/like/domain/entities/like.dart';

abstract class ILikeRepository {
  Future<Either<String, LikeEntity>> toggleLike(int audioId);
  Future<Either<String, bool>> unlikeAudio(int audioId);
  Future<Either<String, List<AudioEntity>>> getLikedAudios();
}
