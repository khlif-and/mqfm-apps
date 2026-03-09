import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/progress/domain/interfaces/i_progress_repository.dart';
import 'package:mqfm_apps/features/progress/applications/progress_bloc/progress_event.dart';
import 'package:mqfm_apps/features/progress/applications/progress_bloc/progress_state.dart';

@injectable
class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  final IProgressRepository _repository;

  ProgressBloc(this._repository) : super(const ProgressState.initial()) {
    on<ProgressSave>(_onSave);
    on<ProgressFetchAll>(_onFetchAll);
    on<ProgressFetchCompleted>(_onFetchCompleted);
    on<ProgressFetchByAudio>(_onFetchByAudio);
  }

  Future<void> _onSave(
      ProgressSave event, Emitter<ProgressState> emit) async {
    final result = await _repository.saveProgress(
        event.audioId, event.lastPosition, event.duration);
    result.fold(
      (error) => emit(ProgressState.error(message: error)),
      (msg) => emit(ProgressState.saved(message: msg)),
    );
  }

  Future<void> _onFetchAll(
      ProgressFetchAll event, Emitter<ProgressState> emit) async {
    emit(const ProgressState.loading());
    final result = await _repository.getAllProgress();
    result.fold(
      (error) => emit(ProgressState.error(message: error)),
      (list) => emit(ProgressState.loaded(progressList: list)),
    );
  }

  Future<void> _onFetchCompleted(
      ProgressFetchCompleted event, Emitter<ProgressState> emit) async {
    emit(const ProgressState.loading());
    final result = await _repository.getCompleted();
    result.fold(
      (error) => emit(ProgressState.error(message: error)),
      (list) => emit(ProgressState.loaded(progressList: list)),
    );
  }

  Future<void> _onFetchByAudio(
      ProgressFetchByAudio event, Emitter<ProgressState> emit) async {
    final result = await _repository.getProgressByAudio(event.audioId);
    result.fold(
      (error) => emit(ProgressState.error(message: error)),
      (p) => emit(ProgressState.single(progress: p)),
    );
  }
}
