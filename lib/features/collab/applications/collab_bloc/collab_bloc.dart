import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/collab/applications/collab_bloc/collab_event.dart';
import 'package:mqfm_apps/features/collab/applications/collab_bloc/collab_state.dart';
import 'package:mqfm_apps/features/collab/domain/interfaces/i_collab_repository.dart';

@injectable
class CollabBloc extends Bloc<CollabEvent, CollabState> {
  final ICollabRepository _repository;

  CollabBloc(this._repository) : super(const CollabState.initial()) {
    on<CollabFetchCollaborators>(_onFetch);
    on<CollabAddCollaborator>(_onAdd);
    on<CollabRemoveCollaborator>(_onRemove);
    on<CollabContributeAudio>(_onContribute);
    on<CollabJoin>(_onJoin);
  }

  Future<void> _onFetch(
      CollabFetchCollaborators event, Emitter<CollabState> emit) async {
    emit(const CollabState.loading());
    final result = await _repository.getCollaborators(event.playlistId);
    result.fold(
      (error) => emit(CollabState.error(message: error)),
      (collabs) => emit(CollabState.loaded(collaborators: collabs)),
    );
  }

  Future<void> _onAdd(
      CollabAddCollaborator event, Emitter<CollabState> emit) async {
    emit(const CollabState.loading());
    final result = await _repository.addCollaborator(
      event.playlistId, event.userId,
    );
    result.fold(
      (error) => emit(CollabState.error(message: error)),
      (_) => emit(const CollabState.actionSuccess(
          message: 'Kolaborator ditambahkan')),
    );
  }

  Future<void> _onRemove(
      CollabRemoveCollaborator event, Emitter<CollabState> emit) async {
    emit(const CollabState.loading());
    final result =
        await _repository.removeCollaborator(event.playlistId, event.userId);
    result.fold(
      (error) => emit(CollabState.error(message: error)),
      (_) =>
          emit(const CollabState.actionSuccess(message: 'Kolaborator dihapus')),
    );
  }

  Future<void> _onContribute(
      CollabContributeAudio event, Emitter<CollabState> emit) async {
    emit(const CollabState.loading());
    final result = await _repository.contributeAudio(
      event.playlistId, event.audioId,
    );
    result.fold(
      (error) => emit(CollabState.error(message: error)),
      (_) => emit(
          const CollabState.actionSuccess(message: 'Audio dikontribusikan')),
    );
  }

  Future<void> _onJoin(CollabJoin event, Emitter<CollabState> emit) async {
    emit(const CollabState.loading());
    final result = await _repository.joinCollab(event.playlistId);
    result.fold(
      (error) => emit(CollabState.error(message: error)),
      (_) => emit(
          const CollabState.actionSuccess(message: 'Berhasil bergabung')),
    );
  }
}
