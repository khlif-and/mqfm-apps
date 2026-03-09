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
      final response = await _datasource.castVote(
        CastVoteRequest(audioId: audioId),
      );
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> removeVote(int audioId) async {
    try {
      final response = await _datasource.removeVote(audioId);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<VoteEntity>>> getMyVotes() async {
    try {
      final response = await _datasource.getMyVotes();
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
  Future<Either<String, List<VoteRankingEntity>>> getWeeklyRanking() async {
    try {
      final response = await _datasource.getWeeklyRanking();
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
  Future<Either<String, List<VoteRankingEntity>>> getMonthlyRanking() async {
    try {
      final response = await _datasource.getMonthlyRanking();
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
