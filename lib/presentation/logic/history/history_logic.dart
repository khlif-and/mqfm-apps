import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/audio/domain/interfaces/i_audio_repository.dart';

class HistoryLogic extends ChangeNotifier {
  final IAudioRepository _audioRepository = getIt<IAudioRepository>();

  List<AudioEntity> histories = [];
  bool isLoading = true;
  String? errorMessage;

  HistoryLogic() {
    fetchHistory();
  }

  Future<void> fetchHistory() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    final result = await _audioRepository.getHistory();
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

  Future<void> clearAll() async {
    final result = await _audioRepository.clearHistory();
    result.fold((_) {}, (_) {
      histories.clear();
      notifyListeners();
    });
  }

  Future<void> deleteItem(int audioId) async {
    final result = await _audioRepository.deleteHistoryItem(audioId);
    result.fold((_) {}, (_) {
      histories.removeWhere((a) => a.id == audioId);
      notifyListeners();
    });
  }
}
