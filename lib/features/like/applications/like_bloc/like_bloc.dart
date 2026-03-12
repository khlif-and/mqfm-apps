import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/like/domain/interfaces/i_like_repository.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_event.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_state.dart';

@injectable
class LikeBloc extends Bloc<LikeEvent, LikeState> {
  final ILikeRepository _repository;
  List<AudioEntity> _likedAudios = [];

  LikeBloc(this._repository) : super(const LikeState.initial()) {
    on<LikeFetchLiked>(_onFetchLiked);
    on<LikeLike>(_onLike);
    on<LikeUnlike>(_onUnlike);
  }

  Future<void> _onFetchLiked(LikeFetchLiked event, Emitter<LikeState> emit) async {
    emit(const LikeState.loading());
    final result = await _repository.getLikedAudios();
    result.fold(
      (error) => emit(LikeState.error(message: error)),
      (audios) {
        _likedAudios = List.from(audios);
        emit(LikeState.loaded(audios: _likedAudios));
      },
    );
  }

  Future<void> _onLike(LikeLike event, Emitter<LikeState> emit) async {
    final result = await _repository.like(targetType: event.targetType, targetId: event.targetId);
    result.fold(
      (error) => emit(LikeState.error(message: error)),
      (_) => emit(const LikeState.toggled(message: 'Berhasil disukai')),
    );
  }

  Future<void> _onUnlike(LikeUnlike event, Emitter<LikeState> emit) async {
    final idx = _likedAudios.indexWhere((a) => a.id == event.targetId);
    AudioEntity? removed;
    if (idx >= 0) {
      removed = _likedAudios.removeAt(idx);
      emit(LikeState.loaded(audios: List.from(_likedAudios)));
    }

    final result = await _repository.unlike(targetType: event.targetType, targetId: event.targetId);
    result.fold(
      (error) {
        if (removed != null && idx >= 0) {
          _likedAudios.insert(idx, removed);
          emit(LikeState.loaded(audios: List.from(_likedAudios)));
        }
      },
      (_) {},
    );
  }
}
