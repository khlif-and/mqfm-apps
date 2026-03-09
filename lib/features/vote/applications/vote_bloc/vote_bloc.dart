import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_event.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_state.dart';
import 'package:mqfm_apps/features/vote/domain/interfaces/i_vote_repository.dart';

@injectable
class VoteBloc extends Bloc<VoteEvent, VoteState> {
  final IVoteRepository _repository;

  VoteBloc(this._repository) : super(const VoteState.initial()) {
    on<VoteCast>(_onCast);
    on<VoteRemove>(_onRemove);
    on<VoteFetchUserVotes>(_onFetchUserVotes);
    on<VoteFetchWeeklyRanking>(_onFetchWeeklyRanking);
    on<VoteFetchMonthlyRanking>(_onFetchMonthlyRanking);
  }

  Future<void> _onCast(VoteCast event, Emitter<VoteState> emit) async {
    emit(const VoteState.loading());
    final result = await _repository.castVote(event.audioId);
    result.fold(
      (error) => emit(VoteState.error(message: error)),
      (vote) => emit(const VoteState.actionSuccess(message: 'Vote berhasil')),
    );
  }

  Future<void> _onRemove(VoteRemove event, Emitter<VoteState> emit) async {
    emit(const VoteState.loading());
    final result = await _repository.removeVote(event.audioId);
    result.fold(
      (error) => emit(VoteState.error(message: error)),
      (_) => emit(const VoteState.actionSuccess(message: 'Vote dihapus')),
    );
  }

  Future<void> _onFetchUserVotes(
      VoteFetchUserVotes event, Emitter<VoteState> emit) async {
    emit(const VoteState.loading());
    final result = await _repository.getMyVotes();
    result.fold(
      (error) => emit(VoteState.error(message: error)),
      (votes) => emit(VoteState.votesLoaded(votes: votes)),
    );
  }

  Future<void> _onFetchWeeklyRanking(
      VoteFetchWeeklyRanking event, Emitter<VoteState> emit) async {
    emit(const VoteState.loading());
    final result = await _repository.getWeeklyRanking();
    result.fold(
      (error) => emit(VoteState.error(message: error)),
      (rankings) => emit(VoteState.rankingLoaded(rankings: rankings)),
    );
  }

  Future<void> _onFetchMonthlyRanking(
      VoteFetchMonthlyRanking event, Emitter<VoteState> emit) async {
    emit(const VoteState.loading());
    final result = await _repository.getMonthlyRanking();
    result.fold(
      (error) => emit(VoteState.error(message: error)),
      (rankings) => emit(VoteState.rankingLoaded(rankings: rankings)),
    );
  }
}
