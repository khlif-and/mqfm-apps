import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/recommendation/data/datasources/remotes/recommendation_api_service.dart';
import 'package:mqfm_apps/features/recommendation/domain/interfaces/i_recommendation_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRecommendationRepository)
class RecommendationRepositoryImpl implements IRecommendationRepository {
  final RecommendationRemoteDatasource _datasource;

  RecommendationRepositoryImpl(this._datasource);

  @override
  Future<Either<String, List<AudioEntity>>> getOnboarding() async {
    try {
      final response = await _datasource.getOnboarding();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Right([]);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<AudioEntity>>> getByArtist(String artist) async {
    try {
      final response = await _datasource.getByArtist(artist);
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Right([]);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<AudioEntity>>> getSimilar(int audioId) async {
    try {
      final response = await _datasource.getSimilar(audioId);
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Right([]);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<AudioEntity>>> getPopular() async {
    try {
      final response = await _datasource.getPopular();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Right([]);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<AudioEntity>>> getQuickPick() async {
    try {
      final response = await _datasource.getQuickPick();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Right([]);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<AudioEntity>>> getPersonalized() async {
    try {
      final response = await _datasource.getPersonalized();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Right([]);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
