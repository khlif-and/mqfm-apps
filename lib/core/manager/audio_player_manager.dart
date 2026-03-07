import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

class AudioPlayerManager {
  static final AudioPlayerManager _instance = AudioPlayerManager._internal();
  factory AudioPlayerManager() => _instance;
  AudioPlayerManager._internal();

  final AudioPlayer player = AudioPlayer();

  int? currentAudioId;

  final ValueNotifier<AudioEntity?> currentAudioNotifier =
      ValueNotifier<AudioEntity?>(null);

  void dispose() {
    player.dispose();
  }
}
