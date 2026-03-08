import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'onboarding_pick_state.freezed.dart';

@freezed
class OnboardingPickState with _$OnboardingPickState {
  const factory OnboardingPickState({
    @Default([]) List<AudioEntity> audios,
    @Default({}) Set<int> selectedIds,
    @Default(true) bool isLoading,
    String? error,
  }) = _OnboardingPickState;
}
