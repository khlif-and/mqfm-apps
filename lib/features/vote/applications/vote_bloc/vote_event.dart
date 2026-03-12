import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_event.freezed.dart';

@freezed
class VoteEvent with _$VoteEvent {
  const factory VoteEvent.cast({required int audioId}) = VoteCast;
  const factory VoteEvent.remove({required int audioId}) = VoteRemove;
  const factory VoteEvent.fetchStatus({required int audioId}) = VoteFetchStatus;
  const factory VoteEvent.fetchWeeklyRanking({@Default(20) int limit}) = VoteFetchWeeklyRanking;
  const factory VoteEvent.fetchMonthlyRanking({@Default(20) int limit}) = VoteFetchMonthlyRanking;
}
