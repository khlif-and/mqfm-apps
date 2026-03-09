import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_event.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_state.dart';
import 'package:mqfm_apps/features/clip/domain/interfaces/i_clip_repository.dart';

@injectable
class ClipBloc extends Bloc<ClipEvent, ClipState> {
  final IClipRepository _repository;

  ClipBloc(this._repository) : super(const ClipState.initial()) {
    on<ClipFetch>(_onFetch);
    on<ClipCreate>(_onCreate);
    on<ClipDelete>(_onDelete);
  }

  Future<void> _onFetch(ClipFetch event, Emitter<ClipState> emit) async {
    emit(const ClipState.loading());
    final result = await _repository.getClips();
    result.fold(
      (error) => emit(ClipState.error(message: error)),
      (clips) => emit(ClipState.loaded(clips: clips)),
    );
  }

  Future<void> _onCreate(ClipCreate event, Emitter<ClipState> emit) async {
    emit(const ClipState.loading());
    final result = await _repository.createClip(
      event.audioId, event.startTime, event.endTime,
    );
    result.fold(
      (error) => emit(ClipState.error(message: error)),
      (clip) => emit(const ClipState.actionSuccess(message: 'Clip dibuat')),
    );
  }

  Future<void> _onDelete(ClipDelete event, Emitter<ClipState> emit) async {
    emit(const ClipState.loading());
    final result = await _repository.deleteClip(event.id);
    result.fold(
      (error) => emit(ClipState.error(message: error)),
      (_) => emit(const ClipState.actionSuccess(message: 'Clip dihapus')),
    );
  }
}
