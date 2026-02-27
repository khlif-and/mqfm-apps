import 'package:flutter/material.dart';
import 'package:mqfm_apps/controller/playlist/playlist_controller.dart';
import 'package:mqfm_apps/model/playlist/playlist_model.dart';
import 'package:mqfm_apps/utils/helpers/log_helper.dart';

class PlaylistLogic extends ChangeNotifier {
  final PlaylistController _controller = PlaylistController();

  List<Playlist> playlists = [];
  bool isLoading = true;
  String? errorMessage;
  String _searchQuery = '';

  List<Playlist> get filteredPlaylists {
    if (_searchQuery.isEmpty) return playlists;
    return playlists
        .where((p) => p.name.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
  }

  void onSearchChanged(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  Future<void> fetchPlaylists() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      LogHelper.info("PlaylistLogic", "Fetching playlists...");
      final response = await _controller.getAllPlaylists();

      if (response.status == 200 && response.data != null) {
        playlists = response.data!;
        isLoading = false;
        LogHelper.success(
          "PlaylistLogic",
          "Fetched ${playlists.length} playlists",
        );
        notifyListeners();
      } else {
        errorMessage = "Gagal memuat data: ${response.message}";
        isLoading = false;
        LogHelper.error(
          "PlaylistLogic",
          "Failed to load playlists: $errorMessage",
        );
        notifyListeners();
      }
    } catch (e, stackTrace) {
      errorMessage = "Terjadi kesalahan koneksi. Pastikan internet lancar.";
      isLoading = false;
      LogHelper.error(
        "PlaylistLogic",
        "Exception fetching playlists: $e",
        stackTrace,
      );
      notifyListeners();
    }
  }
}
