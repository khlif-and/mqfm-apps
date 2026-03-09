import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_event.freezed.dart';

@freezed
class VoteEvent with _$VoteEvent {
  const factory VoteEvent.cast({required int audioId}) = VoteCast;
  const factory VoteEvent.remove({required int audioId}) = VoteRemove;
  const factory VoteEvent.fetchUserVotes() = VoteFetchUserVotes;
  const factory VoteEvent.fetchWeeklyRanking() = VoteFetchWeeklyRanking;
  const factory VoteEvent.fetchMonthlyRanking() = VoteFetchMonthlyRanking;
}
