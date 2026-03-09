import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/progress/domain/entities/progress.dart';

part 'progress_state.freezed.dart';

@freezed
class ProgressState with _$ProgressState {
  const factory ProgressState.initial() = ProgressInitial;
  const factory ProgressState.loading() = ProgressLoading;
  const factory ProgressState.loaded(
      {required List<ProgressEntity> progressList}) = ProgressLoaded;
  const factory ProgressState.single({required ProgressEntity progress}) =
      ProgressSingle;
  const factory ProgressState.saved({required String message}) = ProgressSaved;
  const factory ProgressState.error({required String message}) = ProgressError;
}
