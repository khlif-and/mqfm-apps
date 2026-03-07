import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/audio/data/datasources/remotes/audio_api_service.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/audio/domain/interfaces/i_audio_repository.dart';

@LazySingleton(as: IAudioRepository)
class AudioRepositoryImpl implements IAudioRepository {
  final AudioRemoteDatasource _datasource;

  AudioRepositoryImpl(this._datasource);

  @override
  Future<Either<String, List<AudioEntity>>> getAudios() async {
    try {
      final response = await _datasource.getAudios();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, AudioEntity>> getAudioById(int id) async {
    try {
      final response = await _datasource.getAudioById(id);
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
  Future<Either<String, List<AudioEntity>>> searchAudios(String query) async {
    try {
      final response = await _datasource.searchAudios(query);
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<PlayHistoryEntity>>> getPlayHistory() async {
    try {
      final response = await _datasource.getPlayHistory();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
