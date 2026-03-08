import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_pick_event.freezed.dart';

@freezed
class OnboardingPickEvent with _$OnboardingPickEvent {
  const factory OnboardingPickEvent.fetch() = OnboardingPickFetch;
  const factory OnboardingPickEvent.toggle({required int audioId}) =
      OnboardingPickToggle;
}
