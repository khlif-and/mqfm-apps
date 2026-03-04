import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/audio_repository.dart';
import 'package:mqfm_apps/features/playlist/domain/repositories/playlist_repository.dart';
import 'package:mqfm_apps/core/utils/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class PlayerLogic extends ChangeNotifier {
  final AudioRepository _audioRepository = getIt<AudioRepository>();
  final PlaylistRepository _playlistRepository = getIt<PlaylistRepository>();
  final AudioPlayerManager _audioManager = AudioPlayerManager();

  AudioPlayerManager get audioManager => _audioManager;

  AudioEntity? audioData;
  bool isLoading = true;
  String? errorMessage;
  String? successMessage;

  Future<void> fetchDetailAudio(String audioId) async {
    try {
      final id = int.tryParse(audioId) ?? 0;

      if (_audioManager.currentAudioId == id &&
          _audioManager.currentAudioNotifier.value != null) {
        audioData = _audioManager.currentAudioNotifier.value;
        isLoading = false;
        notifyListeners();
        return;
      }

      final result = await _audioRepository.getAudioById(id);
      result.fold(
        (error) {
          errorMessage = error;
          isLoading = false;
          notifyListeners();
        },
        (audio) {
          audioData = audio;
          isLoading = false;
          notifyListeners();
          _initPlayer(id);
        },
      );
    } catch (e) {
      errorMessage = "Gagal memuat audio";
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> _initPlayer(int id) async {
    if (audioData == null || audioData!.audioUrl.isEmpty) return;

    try {
      _audioManager.currentAudioNotifier.value = audioData;

      if (_audioManager.currentAudioId == id) return;

      _audioManager.currentAudioId = id;

      await _audioManager.player.stop();
      await _audioManager.player.setUrl(audioData!.audioUrl);
      _audioManager.player.play();

      PreferencesHelper.savePlayedAudio(audioData!);
    } catch (e) {
      errorMessage = "Gagal putar: $e";
      notifyListeners();
    }
  }

  Future<bool> createPlaylist(String name) async {
    errorMessage = null;
    successMessage = null;
    notifyListeners();

    final result = await _playlistRepository.createPlaylist(name);
    return result.fold(
      (error) {
        errorMessage = "Gagal: $error";
        notifyListeners();
        return false;
      },
      (playlist) {
        successMessage = "Playlist '$name' berhasil dibuat!";
        notifyListeners();
        return true;
      },
    );
  }

  Future<bool> addAudioToPlaylist(int playlistId, String playlistName) async {
    if (audioData == null) return false;

    final result = await _playlistRepository.addAudioToPlaylist(
      playlistId,
      audioData!.id,
    );
    return result.fold(
      (error) {
        errorMessage = error;
        notifyListeners();
        return false;
      },
      (_) {
        successMessage = "Berhasil ditambahkan ke '$playlistName'";
        notifyListeners();
        return true;
      },
    );
  }
}
