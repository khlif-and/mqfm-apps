import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/like/domain/repositories/like_repository.dart';

class LikedAudiosLogic extends ChangeNotifier {
  final LikeRepository _likeRepository = getIt<LikeRepository>();

  List<AudioEntity> likedAudios = [];
  bool isLoading = true;
  String? errorMessage;
  String? snackBarMessage;

  LikedAudiosLogic() {
    _fetchLikedAudios();
  }

  Future<void> _fetchLikedAudios() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    final result = await _likeRepository.getLikedAudios();
    result.fold(
      (error) {
        errorMessage = error;
        isLoading = false;
        notifyListeners();
      },
      (audios) {
        likedAudios = audios;
        isLoading = false;
        notifyListeners();
      },
    );
  }

  Future<void> unlikeAudio(int index) async {
    if (index < 0 || index >= likedAudios.length) return;

    final audio = likedAudios[index];
    likedAudios.removeAt(index);
    notifyListeners();

    final result = await _likeRepository.unlikeAudio(audio.id);
    result.fold((error) {
      likedAudios.insert(index, audio);
      snackBarMessage = "Gagal menghapus dari favorit";
      notifyListeners();
      snackBarMessage = null;
    }, (_) {});
  }
}
