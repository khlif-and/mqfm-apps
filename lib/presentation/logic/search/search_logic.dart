import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/audio_repository.dart';

class SearchLogic extends ChangeNotifier {
  final AudioRepository _audioRepository = getIt<AudioRepository>();

  List<AudioEntity> searchResults = [];
  bool isLoading = false;
  bool isSearching = false;
  String? errorMessage;

  void onSearchChanged(String query) {
    search(query);
  }

  Future<void> search(String query) async {
    if (query.trim().isEmpty) {
      searchResults = [];
      isSearching = false;
      notifyListeners();
      return;
    }

    isLoading = true;
    isSearching = true;
    errorMessage = null;
    notifyListeners();

    final result = await _audioRepository.searchAudios(query);
    result.fold(
      (error) {
        errorMessage = error;
        isLoading = false;
        notifyListeners();
      },
      (audios) {
        searchResults = audios;
        isLoading = false;
        notifyListeners();
      },
    );
  }
}
