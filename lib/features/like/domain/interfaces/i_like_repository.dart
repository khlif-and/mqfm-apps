import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/like/domain/entities/like.dart';

abstract class ILikeRepository {
  Future<Either<String, LikeEntity>> like({required String targetType, required int targetId});
  Future<Either<String, bool>> unlike({required String targetType, required int targetId});
  Future<Either<String, List<AudioEntity>>> getLikedAudios({String type = 'audio'});
}
