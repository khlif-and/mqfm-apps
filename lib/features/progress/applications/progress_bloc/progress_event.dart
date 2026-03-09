import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_event.freezed.dart';

@freezed
class ProgressEvent with _$ProgressEvent {
  const factory ProgressEvent.save({
    required int audioId,
    required int lastPosition,
    required int duration,
  }) = ProgressSave;
  const factory ProgressEvent.fetchAll() = ProgressFetchAll;
  const factory ProgressEvent.fetchCompleted() = ProgressFetchCompleted;
  const factory ProgressEvent.fetchByAudio({required int audioId}) =
      ProgressFetchByAudio;
}
