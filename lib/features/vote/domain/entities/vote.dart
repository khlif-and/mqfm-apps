import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote.freezed.dart';

@freezed
class VoteRankingEntity with _$VoteRankingEntity {
  const factory VoteRankingEntity({
    @Default(0) int rank,
    @Default(0) int audioId,
    @Default('') String title,
    @Default('') String artist,
    @Default('') String thumbnail,
    @Default('') String dominantColor,
    @Default(0) int duration,
    @Default('') String durationFmt,
    @Default(0) int likes,
  }) = _VoteRankingEntity;
}

@freezed
class VoteStatusEntity with _$VoteStatusEntity {
  const factory VoteStatusEntity({
    @Default(0) int audioId,
    @Default(false) bool hasVoted,
    @Default(0) int totalVotes,
  }) = _VoteStatusEntity;
}
