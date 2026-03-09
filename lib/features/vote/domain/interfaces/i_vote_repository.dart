import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';

abstract class IVoteRepository {
  Future<Either<String, String>> castVote(int audioId);
  Future<Either<String, String>> removeVote(int audioId);
  Future<Either<String, List<VoteEntity>>> getMyVotes();
  Future<Either<String, List<VoteRankingEntity>>> getWeeklyRanking();
  Future<Either<String, List<VoteRankingEntity>>> getMonthlyRanking();
}
