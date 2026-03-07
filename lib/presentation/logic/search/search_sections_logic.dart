import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/audio/domain/interfaces/i_audio_repository.dart';

class SearchSectionsLogic extends ChangeNotifier {
  final IAudioRepository _audioRepository = getIt<IAudioRepository>();

  List<AudioEntity> audios = [];
  bool isLoading = true;

  Future<void> fetchAudios() async {
    isLoading = true;
    notifyListeners();

    try {
      final result = await _audioRepository.getAudios();
      result.fold(
        (_) {
          audios = [];
          isLoading = false;
          notifyListeners();
        },
        (data) {
          audios = data;
          isLoading = false;
          notifyListeners();
        },
      );
    } catch (_) {
      audios = [];
      isLoading = false;
      notifyListeners();
    }
  }
}
