import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

abstract class IAudioRepository {
  Future<Either<String, List<AudioEntity>>> getAudios();
  Future<Either<String, AudioEntity>> getAudioById(int id);
  Future<Either<String, List<AudioEntity>>> searchAudios(String query);
  Future<Either<String, List<AudioEntity>>> getHistory();
  Future<Either<String, String>> clearHistory();
  Future<Either<String, String>> deleteHistoryItem(int audioId);
}
