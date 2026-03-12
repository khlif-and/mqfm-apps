import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/routes/app_routes.dart';

class DownloadNotificationHelper {
  static final DownloadNotificationHelper _instance = DownloadNotificationHelper._();
  factory DownloadNotificationHelper() => _instance;
  DownloadNotificationHelper._();

  static const _channelId = 'mqfm_download';
  static const _channelName = 'Download Audio';
  static const _accentColorValue = 0xFF1ED760;

  final _plugin = FlutterLocalNotificationsPlugin();
  bool _initialized = false;

  Future<void> init() async {
    if (_initialized) return;
    _initialized = true;

    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwinSettings = DarwinInitializationSettings();
    const settings = InitializationSettings(
      android: androidSettings,
      iOS: darwinSettings,
      macOS: darwinSettings,
    );
    await _plugin.initialize(
      settings,
      onDidReceiveNotificationResponse: _onNotificationTap,
    );

    if (Platform.isAndroid) {
      final android = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
      await android?.requestNotificationsPermission();
      await android?.createNotificationChannel(
        const AndroidNotificationChannel(
          _channelId,
          _channelName,
          importance: Importance.low,
          playSound: false,
          enableVibration: false,
        ),
      );
    }
  }

  void _onNotificationTap(NotificationResponse response) {
    final context = appRouter.routerDelegate.navigatorKey.currentContext;
    if (context != null) {
      GoRouter.of(context).go(AppPathRoutes.downloads);
    }
  }

  Future<void> showProgress({
    required int id,
    required String title,
    required int progress,
  }) async {
    final androidDetails = AndroidNotificationDetails(
      _channelId,
      _channelName,
      importance: Importance.low,
      priority: Priority.low,
      ongoing: true,
      autoCancel: false,
      showProgress: true,
      maxProgress: 100,
      progress: progress,
      playSound: false,
      enableVibration: false,
      onlyAlertOnce: true,
      color: const Color(_accentColorValue),
      subText: 'Mengunduh',
    );
    await _plugin.show(
      id,
      title,
      'Mengunduh $progress%',
      NotificationDetails(android: androidDetails),
    );
  }

  Future<void> showRetrying({
    required int id,
    required String title,
    required int attempt,
    required int maxAttempts,
  }) async {
    final androidDetails = AndroidNotificationDetails(
      _channelId,
      _channelName,
      importance: Importance.low,
      priority: Priority.low,
      ongoing: true,
      autoCancel: false,
      showProgress: false,
      playSound: false,
      enableVibration: false,
      onlyAlertOnce: true,
      color: const Color(_accentColorValue),
      subText: 'Mencoba ulang',
    );
    await _plugin.show(
      id,
      title,
      'Mencoba ulang ($attempt/$maxAttempts)...',
      NotificationDetails(android: androidDetails),
    );
  }

  Future<void> showComplete({
    required int id,
    required String title,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      _channelId,
      _channelName,
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
      ongoing: false,
      autoCancel: true,
      playSound: false,
      color: Color(_accentColorValue),
      subText: 'Selesai',
    );
    await _plugin.show(
      id,
      title,
      'Unduhan selesai',
      const NotificationDetails(android: androidDetails),
    );
  }

  Future<void> showError({
    required int id,
    required String title,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      _channelId,
      _channelName,
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
      ongoing: false,
      autoCancel: true,
      color: Color(0xFFFF5252),
      subText: 'Gagal',
    );
    await _plugin.show(
      id,
      title,
      'Gagal mengunduh — ketuk untuk coba lagi',
      const NotificationDetails(android: androidDetails),
    );
  }

  Future<void> cancel(int id) async {
    await _plugin.cancel(id);
  }
}
