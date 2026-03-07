import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'like_state.freezed.dart';

@freezed
class LikeState with _$LikeState {
  const factory LikeState.initial() = LikeInitial;
  const factory LikeState.loading() = LikeLoading;
  const factory LikeState.loaded({required List<AudioEntity> audios}) =
      LikeLoaded;
  const factory LikeState.toggled({required String message}) = LikeToggled;
  const factory LikeState.error({required String message}) = LikeError;
}
