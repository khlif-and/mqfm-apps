import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/audio/domain/interfaces/i_audio_repository.dart';

class HistoryLogic extends ChangeNotifier {
  final IAudioRepository _audioRepository = getIt<IAudioRepository>();

  List<PlayHistoryEntity> histories = [];
  bool isLoading = true;
  String? errorMessage;

  HistoryLogic() {
    fetchHistory();
  }

  Future<void> fetchHistory() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    final result = await _audioRepository.getPlayHistory();
    result.fold(
      (error) {
        errorMessage = error;
        isLoading = false;
        notifyListeners();
      },
      (data) {
        histories = data;
        isLoading = false;
        notifyListeners();
      },
    );
  }
}
