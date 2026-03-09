import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/collab/domain/entities/collab.dart';

part 'collab_state.freezed.dart';

@freezed
class CollabState with _$CollabState {
  const factory CollabState.initial() = CollabInitial;
  const factory CollabState.loading() = CollabLoading;
  const factory CollabState.loaded(
      {required List<CollaboratorEntity> collaborators}) = CollabLoaded;
  const factory CollabState.actionSuccess({required String message}) =
      CollabActionSuccess;
  const factory CollabState.error({required String message}) = CollabError;
}
