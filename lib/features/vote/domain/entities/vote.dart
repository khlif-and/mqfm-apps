import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote.freezed.dart';
part 'vote.g.dart';

@freezed
class VoteEntity with _$VoteEntity {
  const factory VoteEntity({
    required int id,
    @Default(0) int audioId,
    @Default('') String createdAt,
  }) = _VoteEntity;

  factory VoteEntity.fromJson(Map<String, dynamic> json) =>
      _$VoteEntityFromJson(json);
}

@freezed
class VoteRankingEntity with _$VoteRankingEntity {
  const factory VoteRankingEntity({
    @Default(0) int audioId,
    @Default('') String title,
    @Default('') String artist,
    @Default('') String thumbnail,
    @Default(0) int voteCount,
    @Default(0) int rank,
  }) = _VoteRankingEntity;

  factory VoteRankingEntity.fromJson(Map<String, dynamic> json) =>
      _$VoteRankingEntityFromJson(json);
}
