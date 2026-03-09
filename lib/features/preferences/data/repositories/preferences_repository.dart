import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/preferences/data/datasources/remotes/preferences_api_service.dart';
import 'package:mqfm_apps/features/preferences/data/models/request/preferences_request.dart';
import 'package:mqfm_apps/features/preferences/domain/entities/preferences.dart';
import 'package:mqfm_apps/features/preferences/domain/interfaces/i_preferences_repository.dart';

@LazySingleton(as: IPreferencesRepository)
class PreferencesRepositoryImpl implements IPreferencesRepository {
  final PreferencesRemoteDatasource _datasource;

  PreferencesRepositoryImpl(this._datasource);

  @override
  Future<Either<String, PreferencesEntity>> getPreferences() async {
    try {
      final response = await _datasource.getPreferences();
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

  @override
  Future<Either<String, String>> updatePreferences({
    required double playbackSpeed,
    required int sleepTimerMinutes,
    required bool autoDownload,
  }) async {
    try {
      final response = await _datasource.updatePreferences(
        UpdatePreferencesRequest(
          playbackSpeed: playbackSpeed,
          sleepTimerMinutes: sleepTimerMinutes,
          autoDownload: autoDownload,
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
}
