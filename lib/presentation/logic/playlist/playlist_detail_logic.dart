import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist_entity.dart';
import 'package:mqfm_apps/features/playlist/domain/repositories/playlist_repository.dart';

class PlaylistDetailLogic extends ChangeNotifier {
  final PlaylistRepository _playlistRepository = getIt<PlaylistRepository>();

  PlaylistEntity? playlist;
  bool isLoading = true;
  String? errorMessage;

  Future<void> fetchDetail(int id) async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    final result = await _playlistRepository.getDetailPlaylist(id);
    result.fold(
      (error) {
        errorMessage = error;
        isLoading = false;
        notifyListeners();
      },
      (data) {
        playlist = data;
        isLoading = false;
        notifyListeners();
      },
    );
  }

  Future<void> fetchPlaylistDetail(int id) async {
    await fetchDetail(id);
  }
}
