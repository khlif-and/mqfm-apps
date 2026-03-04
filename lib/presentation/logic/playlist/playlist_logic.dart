import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist_entity.dart';
import 'package:mqfm_apps/features/playlist/domain/repositories/playlist_repository.dart';

class PlaylistLogic extends ChangeNotifier {
  final PlaylistRepository _playlistRepository = getIt<PlaylistRepository>();

  List<PlaylistEntity> playlists = [];
  List<PlaylistEntity> filteredPlaylists = [];
  bool isLoading = true;
  String? errorMessage;
  String _searchQuery = '';

  PlaylistLogic() {
    fetchPlaylists();
  }

  void onSearchChanged(String query) {
    _searchQuery = query.toLowerCase();
    if (_searchQuery.isEmpty) {
      filteredPlaylists = List.from(playlists);
    } else {
      filteredPlaylists = playlists
          .where((p) => p.name.toLowerCase().contains(_searchQuery))
          .toList();
    }
    notifyListeners();
  }

  Future<void> fetchPlaylists() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    final result = await _playlistRepository.getPlaylists();
    result.fold(
      (error) {
        errorMessage = error;
        isLoading = false;
        notifyListeners();
      },
      (data) {
        playlists = data;
        filteredPlaylists = List.from(data);
        isLoading = false;
        notifyListeners();
      },
    );
  }
}
