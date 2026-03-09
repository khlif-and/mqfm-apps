import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/resume/domain/entities/resume.dart';

part 'resume_state.freezed.dart';

@freezed
class ResumeState with _$ResumeState {
  const factory ResumeState.initial() = ResumeInitial;
  const factory ResumeState.loading() = ResumeLoading;
  const factory ResumeState.loaded({required List<ResumeEntity> resumes}) =
      ResumeLoaded;
  const factory ResumeState.saved({required String message}) = ResumeSaved;
  const factory ResumeState.error({required String message}) = ResumeError;
}
