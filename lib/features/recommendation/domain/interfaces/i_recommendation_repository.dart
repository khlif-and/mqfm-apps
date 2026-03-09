import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

abstract class IRecommendationRepository {
  Future<Either<String, List<AudioEntity>>> getOnboarding();
  Future<Either<String, List<AudioEntity>>> getByArtist(String artist);
  Future<Either<String, List<AudioEntity>>> getSimilar(int audioId);
  Future<Either<String, List<AudioEntity>>> getPopular();
  Future<Either<String, List<AudioEntity>>> getQuickPick();
  Future<Either<String, List<AudioEntity>>> getPersonalized();
  Future<Either<String, List<AudioEntity>>> getMostListened();
  Future<Either<String, List<AudioEntity>>> getLocationBased();
  Future<Either<String, List<AudioEntity>>> getTimeBased();
}
