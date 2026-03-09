import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_event.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_state.dart';
import 'package:mqfm_apps/features/resume/domain/interfaces/i_resume_repository.dart';

@injectable
class ResumeBloc extends Bloc<ResumeEvent, ResumeState> {
  final IResumeRepository _repository;

  ResumeBloc(this._repository) : super(const ResumeState.initial()) {
    on<ResumeSave>(_onSave);
    on<ResumeFetch>(_onFetch);
  }

  Future<void> _onSave(ResumeSave event, Emitter<ResumeState> emit) async {
    emit(const ResumeState.loading());
    final result = await _repository.saveResume(
      event.audioId, event.positionSeconds,
    );
    result.fold(
      (error) => emit(ResumeState.error(message: error)),
      (_) => emit(const ResumeState.saved(message: 'Posisi disimpan')),
    );
  }

  Future<void> _onFetch(ResumeFetch event, Emitter<ResumeState> emit) async {
    emit(const ResumeState.loading());
    final result = await _repository.getResumeList();
    result.fold(
      (error) => emit(ResumeState.error(message: error)),
      (resumes) => emit(ResumeState.loaded(resumes: resumes)),
    );
  }
}
