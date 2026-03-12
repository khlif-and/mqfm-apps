import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';

part 'vote_state.freezed.dart';

@freezed
class VoteState with _$VoteState {
  const factory VoteState.initial() = VoteInitial;
  const factory VoteState.loading() = VoteLoading;
  const factory VoteState.rankingLoaded(
      {required List<VoteRankingEntity> rankings}) = VoteRankingLoaded;
  const factory VoteState.statusLoaded(
      {required VoteStatusEntity status}) = VoteStatusLoaded;
  const factory VoteState.actionSuccess({required String message}) =
      VoteActionSuccess;
  const factory VoteState.error({required String message}) = VoteError;
}
