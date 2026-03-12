import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';

abstract class IVoteRepository {
  Future<Either<String, String>> castVote(int audioId);
  Future<Either<String, String>> removeVote(int audioId);
  Future<Either<String, VoteStatusEntity>> getVoteStatus(int audioId);
  Future<Either<String, List<VoteRankingEntity>>> getWeeklyRanking({int limit = 20});
  Future<Either<String, List<VoteRankingEntity>>> getMonthlyRanking({int limit = 20});
}
