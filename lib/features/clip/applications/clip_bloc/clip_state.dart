import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/clip/domain/entities/clip.dart';

part 'clip_state.freezed.dart';

@freezed
class ClipState with _$ClipState {
  const factory ClipState.initial() = ClipInitial;
  const factory ClipState.loading() = ClipLoading;
  const factory ClipState.loaded({required List<ClipEntity> clips}) =
      ClipLoaded;
  const factory ClipState.actionSuccess({required String message}) =
      ClipActionSuccess;
  const factory ClipState.error({required String message}) = ClipError;
}
