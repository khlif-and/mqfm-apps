import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/recommendation/domain/interfaces/i_recommendation_repository.dart';
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_state.dart';

@injectable
class OnboardingPickBloc
    extends Bloc<OnboardingPickEvent, OnboardingPickState> {
  final IRecommendationRepository _repository;

  OnboardingPickBloc(this._repository)
      : super(const OnboardingPickState()) {
    on<OnboardingPickFetch>(_onFetch);
    on<OnboardingPickToggle>(_onToggle);
  }

  Future<void> _onFetch(
    OnboardingPickFetch event,
    Emitter<OnboardingPickState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _repository.getOnboarding();
    result.fold(
      (error) => emit(state.copyWith(isLoading: false, error: error)),
      (data) => emit(state.copyWith(isLoading: false, audios: data)),
    );
  }

  void _onToggle(
    OnboardingPickToggle event,
    Emitter<OnboardingPickState> emit,
  ) {
    final current = Set<int>.from(state.selectedIds);
    if (current.contains(event.audioId)) {
      current.remove(event.audioId);
    } else {
      if (current.length < 5) {
        current.add(event.audioId);
      }
    }
    emit(state.copyWith(selectedIds: current));
  }
}
