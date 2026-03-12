import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:mqfm_apps/core/utils/constants/api/api_constants.dart';
import 'package:mqfm_apps/core/utils/helpers/download_notification_helper.dart';

class AudioFileDownloader {
  static final AudioFileDownloader _instance = AudioFileDownloader._();
  factory AudioFileDownloader() => _instance;
  AudioFileDownloader._();

  final _dio = Dio();
  final _notif = DownloadNotificationHelper();
  final ValueNotifier<Map<int, double>> progressNotifier = ValueNotifier({});
  int _lastNotifUpdate = 0;

  static const int _maxRetries = 3;
  static const Duration _retryDelay = Duration(seconds: 5);

  Future<Directory> get _downloadDir async {
    final appDir = await getApplicationDocumentsDirectory();
    final dir = Directory('${appDir.path}/mqfm_audio');
    if (!await dir.exists()) await dir.create(recursive: true);
    return dir;
  }

  Future<String> download({
    required int audioId,
    required String filePath,
    String title = 'Audio',
  }) async {
    final dir = await _downloadDir;
    final ext = filePath.contains('.') ? filePath.split('.').last : 'mp3';
    final localFile = File('${dir.path}/audio_$audioId.$ext');

    if (await localFile.exists()) return localFile.path;

    final url = filePath.startsWith('http')
        ? filePath
        : ApiConstants.buildMediaUrl(filePath);

    if (url.isEmpty) throw Exception('URL audio kosong');

    await _notif.init();
    _updateProgress(audioId, 0);
    await _notif.showProgress(id: audioId, title: title, progress: 0);

    for (int attempt = 0; attempt <= _maxRetries; attempt++) {
      try {
        if (await localFile.exists() && (await localFile.length()) == 0) {
          await localFile.delete();
        }

        await _dio.download(
          url,
          localFile.path,
          onReceiveProgress: (received, total) {
            if (total > 0) {
              final fraction = received / total;
              _updateProgress(audioId, fraction);
              _throttledNotifUpdate(audioId, title, (fraction * 100).toInt());
            }
          },
        );

        _removeProgress(audioId);
        await _notif.showComplete(id: audioId, title: title);
        return localFile.path;
      } catch (e) {
        if (await localFile.exists()) await localFile.delete();

        if (attempt < _maxRetries) {
          final retryIn = _retryDelay * (attempt + 1);
          await _notif.showRetrying(
            id: audioId,
            title: title,
            attempt: attempt + 1,
            maxAttempts: _maxRetries,
          );
          await Future<void>.delayed(retryIn);
          continue;
        }

        _removeProgress(audioId);
        await _notif.showError(id: audioId, title: title);
        rethrow;
      }
    }

    throw Exception('Download gagal setelah $_maxRetries percobaan');
  }

  void _throttledNotifUpdate(int audioId, String title, int percent) {
    final now = DateTime.now().millisecondsSinceEpoch;
    if (now - _lastNotifUpdate < 500) return;
    _lastNotifUpdate = now;
    _notif.showProgress(id: audioId, title: title, progress: percent);
  }

  Future<void> deleteFile(int audioId) async {
    final dir = await _downloadDir;
    final files = dir.listSync().whereType<File>().where(
      (f) => f.path.contains('audio_$audioId.'),
    );
    for (final f in files) {
      if (await f.exists()) await f.delete();
    }
  }

  Future<bool> fileExists(int audioId) async {
    final dir = await _downloadDir;
    return dir.listSync().whereType<File>().any(
      (f) => f.path.contains('audio_$audioId.'),
    );
  }

  void _updateProgress(int audioId, double value) {
    final map = Map<int, double>.from(progressNotifier.value);
    map[audioId] = value;
    progressNotifier.value = map;
  }

  void _removeProgress(int audioId) {
    final map = Map<int, double>.from(progressNotifier.value);
    map.remove(audioId);
    progressNotifier.value = map;
  }
}
