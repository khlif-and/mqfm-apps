import 'dart:async';
import 'dart:io';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mqfm_apps/core/manager/audio_player_handler.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

class AudioPlayerManager {
  static final AudioPlayerManager _instance = AudioPlayerManager._internal();
  factory AudioPlayerManager() => _instance;
  AudioPlayerManager._internal();

  final AudioPlayer player = AudioPlayer();
  AudioPlayerHandler? _handler;

  bool _initialized = false;

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

  static const int _maxCachedAudios = 5;
  static const String _cachedAudioIdsKey = 'audio_file_cache_ids';

  final ValueNotifier<String?> playerErrorNotifier = ValueNotifier<String?>(null);

  Future<void> init() async {
    if (_initialized) return;
    _initialized = true;

    _handler = await AudioService.init(
      builder: () => AudioPlayerHandler(player),
      config: const AudioServiceConfig(
        androidNotificationChannelId: 'com.mqfm.apps.audio',
        androidNotificationChannelName: 'MQFM Audio',
        androidNotificationOngoing: true,
        androidStopForegroundOnPause: true,
        androidNotificationIcon: 'mipmap/ic_launcher',
      ),
    );

    _handler!.onSkipToNext = () async => await skipNext();
    _handler!.onSkipToPrevious = () async => await skipPrevious();

    player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        skipNext();
      }
    });
  }

  void setQueue(List<AudioEntity> items, int startIndex) {
    _queue = items;
    _originalQueue = List.from(items);
    queueIndexNotifier.value = startIndex.clamp(0, items.length - 1);
  }

  bool get hasNext => queueIndexNotifier.value < _queue.length - 1;
  bool get hasPrevious => queueIndexNotifier.value > 0;

  AudioEntity? get currentAudio =>
      _queue.isNotEmpty ? _queue[queueIndexNotifier.value] : null;

  Future<File> _getCacheFile(int audioId) async {
    final dir = await getTemporaryDirectory();
    final cacheDir = Directory('${dir.path}/mqfm_audio_cache');
    if (!await cacheDir.exists()) await cacheDir.create(recursive: true);
    return File('${cacheDir.path}/audio_$audioId.tmp');
  }

  Future<void> _trackCachedAudio(int audioId) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> ids = prefs.getStringList(_cachedAudioIdsKey) ?? [];
    ids.remove(audioId.toString());
    ids.insert(0, audioId.toString());
    while (ids.length > _maxCachedAudios) {
      final evictedId = int.tryParse(ids.removeLast());
      if (evictedId != null) {
        final file = await _getCacheFile(evictedId);
        if (await file.exists()) await file.delete();
      }
    }
    await prefs.setStringList(_cachedAudioIdsKey, ids);
  }

  void _updateNotification(AudioEntity audio) {
    _handler?.updateMediaItem(MediaItem(
      id: audio.id.toString(),
      title: audio.title,
      artist: audio.artist.isNotEmpty ? audio.artist : audio.description,
      duration: Duration(seconds: audio.duration),
      artUri: audio.thumbnail.isNotEmpty ? Uri.tryParse(audio.thumbnail) : null,
    ));
  }

  Future<void> playAt(int index) async {
    if (index < 0 || index >= _queue.length) return;
    queueIndexNotifier.value = index;
    final audio = _queue[index];
    if (audio.filePath.isEmpty) return;
    currentAudioNotifier.value = audio;
    currentAudioId = audio.id;
    _updateNotification(audio);
    await player.stop();
    try {
      final cacheFile = await _getCacheFile(audio.id);
      final source = LockCachingAudioSource(
        Uri.parse(audio.filePath),
        cacheFile: cacheFile,
      );
      await player.setAudioSource(source);
      player.play();
      playerErrorNotifier.value = null;
    } on PlayerException catch (e) {
      playerErrorNotifier.value = e.message ?? 'Gagal memuat audio';
      return;
    } catch (_) {
      playerErrorNotifier.value = 'Gagal memuat audio';
      return;
    }
    await _trackCachedAudio(audio.id);
    PreferencesHelper.savePlayedAudio(audio);
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
    _handler?.dispose();
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
