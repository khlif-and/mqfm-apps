import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/preferences/domain/entities/preferences.dart';

abstract class IPreferencesRepository {
  Future<Either<String, PreferencesEntity>> getPreferences();
  Future<Either<String, String>> updatePreferences({
    required double playbackSpeed,
    required int sleepTimerMinutes,
    required bool autoDownload,
  });
}
