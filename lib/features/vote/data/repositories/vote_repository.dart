import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/vote/data/datasources/remotes/vote_api_service.dart';
import 'package:mqfm_apps/features/vote/data/models/request/vote_request.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';
import 'package:mqfm_apps/features/vote/domain/interfaces/i_vote_repository.dart';

@LazySingleton(as: IVoteRepository)
class VoteRepositoryImpl implements IVoteRepository {
  final VoteRemoteDatasource _datasource;

  VoteRepositoryImpl(this._datasource);

  @override
  Future<Either<String, String>> castVote(int audioId) async {
    try {
      await _datasource.castVote(CastVoteRequest(audioId: audioId));
      return const Right('Vote berhasil');
    } on DioException catch (e) {
      return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
    }
  }

  @override
  Future<Either<String, String>> removeVote(int audioId) async {
    try {
      await _datasource.removeVote(audioId);
      return const Right('Vote dihapus');
    } on DioException catch (e) {
      return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
    }
  }

  @override
  Future<Either<String, VoteStatusEntity>> getVoteStatus(int audioId) async {
    try {
      final dto = await _datasource.getVoteStatus(audioId);
      return Right(dto.toEntity());
    } on DioException catch (e) {
      return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
    }
  }

  @override
  Future<Either<String, List<VoteRankingEntity>>> getWeeklyRanking({int limit = 20}) async {
    try {
      final dtos = await _datasource.getWeeklyRanking(limit: limit);
      return Right(dtos.map((d) => d.toEntity()).toList());
    } on DioException catch (e) {
      return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left('Terjadi kesalahan');
    }
  }

  @override
  Future<Either<String, List<VoteRankingEntity>>> getMonthlyRanking({int limit = 20}) async {
    try {
      final dtos = await _datasource.getMonthlyRanking(limit: limit);
      return Right(dtos.map((d) => d.toEntity()).toList());
    } on DioException catch (e) {
      return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left('Terjadi kesalahan');
    }
  }
}
