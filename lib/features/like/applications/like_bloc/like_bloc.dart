import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/like/domain/interfaces/i_like_repository.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_event.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_state.dart';

@injectable
class LikeBloc extends Bloc<LikeEvent, LikeState> {
  final ILikeRepository _likeRepository;
  List<AudioEntity> _likedAudios = [];

  LikeBloc(this._likeRepository) : super(const LikeState.initial()) {
    on<LikeFetchLiked>(_onFetchLiked);
    on<LikeToggle>(_onToggle);
    on<LikeUnlike>(_onUnlike);
  }

  Future<void> _onFetchLiked(
    LikeFetchLiked event,
    Emitter<LikeState> emit,
  ) async {
    emit(const LikeState.loading());
    final result = await _likeRepository.getLikedAudios();
    result.fold((error) => emit(LikeState.error(message: error)), (audios) {
      _likedAudios = List.from(audios);
      emit(LikeState.loaded(audios: _likedAudios));
    });
  }

  Future<void> _onToggle(LikeToggle event, Emitter<LikeState> emit) async {
    final result = await _likeRepository.toggleLike(event.audioId);
    result.fold(
      (error) => emit(LikeState.error(message: error)),
      (like) => emit(LikeState.toggled(message: like.message)),
    );
  }

  Future<void> _onUnlike(LikeUnlike event, Emitter<LikeState> emit) async {
    if (event.index >= 0 && event.index < _likedAudios.length) {
      final removed = _likedAudios.removeAt(event.index);
      emit(LikeState.loaded(audios: List.from(_likedAudios)));

      final result = await _likeRepository.unlikeAudio(event.audioId);
      result.fold((error) {
        _likedAudios.insert(event.index, removed);
        emit(LikeState.loaded(audios: List.from(_likedAudios)));
      }, (_) {});
    }
  }
}
