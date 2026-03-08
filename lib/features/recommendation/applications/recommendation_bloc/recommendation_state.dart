import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'recommendation_state.freezed.dart';

@freezed
class RecommendationState with _$RecommendationState {
  const factory RecommendationState({
    @Default([]) List<AudioEntity> personalized,
    @Default([]) List<AudioEntity> popular,
    @Default([]) List<AudioEntity> quickPick,
    @Default([]) List<AudioEntity> byArtist,
    @Default('') String artistName,
    @Default([]) List<AudioEntity> similar,
    @Default(true) bool isLoading,
    String? error,
  }) = _RecommendationState;
}
