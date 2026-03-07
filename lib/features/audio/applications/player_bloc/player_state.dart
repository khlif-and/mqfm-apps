import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'player_state.freezed.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial() = PlayerInitial;
  const factory PlayerState.loading() = PlayerLoading;
  const factory PlayerState.loaded({required AudioEntity audio}) = PlayerLoaded;
  const factory PlayerState.error({required String message}) = PlayerError;
}
