import 'dart:async';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

class AudioPlayerManager {
  static final AudioPlayerManager _instance = AudioPlayerManager._internal();
  factory AudioPlayerManager() => _instance;
  AudioPlayerManager._internal() {
    player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        skipNext();
      }
    });
  }

  final AudioPlayer player = AudioPlayer();

  int? currentAudioId;

  final ValueNotifier<AudioEntity?> currentAudioNotifier =
      ValueNotifier<AudioEntity?>(null);

  final ValueNotifier<int> queueIndexNotifier = ValueNotifier<int>(0);
  final ValueNotifier<bool> isShuffledNotifier = ValueNotifier<bool>(false);

  List<AudioEntity> _queue = [];
  List<AudioEntity> _originalQueue = [];
  List<AudioEntity> get queue => _queue;

  Timer? _sleepTimer;
  final ValueNotifier<Duration?> sleepTimerRemaining = ValueNotifier(null);

  static const int _cacheSize = 5;
  final Map<int, String> _urlCache = {};

  final ValueNotifier<String?> playerErrorNotifier = ValueNotifier<String?>(null);

  void setQueue(List<AudioEntity> items, int startIndex) {
    _queue = items;
    _originalQueue = List.from(items);
    queueIndexNotifier.value = startIndex.clamp(0, items.length - 1);
    _precache();
  }

  void _precache() {
    final idx = queueIndexNotifier.value;
    _urlCache.clear();
    for (var i = idx; i < (idx + _cacheSize) && i < _queue.length; i++) {
      if (_queue[i].filePath.isNotEmpty) {
        _urlCache[_queue[i].id] = _queue[i].filePath;
      }
    }
  }

  bool get hasNext => queueIndexNotifier.value < _queue.length - 1;
  bool get hasPrevious => queueIndexNotifier.value > 0;

  AudioEntity? get currentAudio =>
      _queue.isNotEmpty ? _queue[queueIndexNotifier.value] : null;

  Future<void> playAt(int index) async {
    if (index < 0 || index >= _queue.length) return;
    queueIndexNotifier.value = index;
    final audio = _queue[index];
    if (audio.filePath.isEmpty) return;
    currentAudioNotifier.value = audio;
    currentAudioId = audio.id;
    await player.stop();
    try {
      await player.setUrl(audio.filePath);
      player.play();
      playerErrorNotifier.value = null;
    } on PlayerException catch (e) {
      playerErrorNotifier.value = e.message ?? 'Gagal memuat audio';
      return;
    } catch (_) {
      playerErrorNotifier.value = 'Gagal memuat audio';
      return;
    }
    PreferencesHelper.savePlayedAudio(audio);
    _precache();
  }

  Future<void> skipNext() async {
    if (!hasNext) return;
    await playAt(queueIndexNotifier.value + 1);
  }

  Future<void> skipPrevious() async {
    final pos = player.position;
    if (pos.inSeconds > 3) {
      await player.seek(Duration.zero);
      return;
    }
    if (!hasPrevious) return;
    await playAt(queueIndexNotifier.value - 1);
  }

  void dispose() {
    _sleepTimer?.cancel();
    player.dispose();
  }

  void toggleShuffle() {
    final current = currentAudio;
    if (isShuffledNotifier.value) {
      _queue = List.from(_originalQueue);
      isShuffledNotifier.value = false;
    } else {
      _queue.shuffle();
      isShuffledNotifier.value = true;
    }
    if (current != null) {
      final idx = _queue.indexWhere((a) => a.id == current.id);
      if (idx >= 0) queueIndexNotifier.value = idx;
    }
  }

  void startSleepTimer(Duration duration) {
    _sleepTimer?.cancel();
    sleepTimerRemaining.value = duration;
    _sleepTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final remaining = sleepTimerRemaining.value;
      if (remaining == null || remaining.inSeconds <= 1) {
        cancelSleepTimer();
        player.pause();
        return;
      }
      sleepTimerRemaining.value = remaining - const Duration(seconds: 1);
    });
  }

  void cancelSleepTimer() {
    _sleepTimer?.cancel();
    _sleepTimer = null;
    sleepTimerRemaining.value = null;
  }
}
