import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_event.freezed.dart';

@freezed
class ResumeEvent with _$ResumeEvent {
  const factory ResumeEvent.save({
    required int audioId,
    required int positionSeconds,
  }) = ResumeSave;
  const factory ResumeEvent.fetch() = ResumeFetch;
}
