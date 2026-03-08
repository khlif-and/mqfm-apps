import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesHelper {
  static const String _authTokenKey = 'auth_token';
  static const String _historyKey = 'played_history';

  static final ValueNotifier<List<AudioEntity>> historyNotifier = ValueNotifier(
    [],
  );

  PreferencesHelper._();

  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authTokenKey, token);
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_authTokenKey);
  }

  static Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authTokenKey);
  }

  static Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null && token.isNotEmpty;
  }

  static Future<void> saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<void> savePlayedAudio(AudioEntity audio) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> currentList = prefs.getStringList(_historyKey) ?? [];

    currentList.removeWhere((itemStr) {
      try {
        final Map<String, dynamic> json = jsonDecode(itemStr);
        return json['id'] == audio.id;
      } catch (e) {
        return false;
      }
    });

    currentList.insert(
      0,
      jsonEncode({
        'id': audio.id,
        'title': audio.title,
        'artist': audio.artist,
        'description': audio.description,
        'file_path': audio.filePath,
        'duration': audio.duration,
        'status': audio.status,
        'thumbnail': audio.thumbnail,
        'dominant_color': audio.dominantColor,
        'category_id': audio.categoryId,
        'created_at': audio.createdAt,
        'updated_at': audio.updatedAt,
      }),
    );

    if (currentList.length > 6) {
      currentList.removeRange(6, currentList.length);
    }

    await prefs.setStringList(_historyKey, currentList);

    await getPlayedAudios();
  }

  static Future<List<AudioEntity>> getPlayedAudios() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> currentList = prefs.getStringList(_historyKey) ?? [];

    List<AudioEntity> audios = [];
    for (String itemStr in currentList) {
      try {
        final Map<String, dynamic> json = jsonDecode(itemStr);
        audios.add(
          AudioEntity(
            id: json['id'],
            title: json['title'] ?? '',
            artist: json['artist'] ?? '',
            description: json['description'] ?? '',
            filePath: json['file_path'] ?? '',
            duration: json['duration'] ?? 0,
            status: json['status'] ?? 'active',
            thumbnail: json['thumbnail'] ?? '',
            dominantColor: json['dominant_color'] ?? '',
            categoryId: json['category_id'] ?? 0,
            createdAt: json['created_at'] ?? '',
            updatedAt: json['updated_at'] ?? '',
          ),
        );
      } catch (e) {}
    }

    historyNotifier.value = audios;

    return audios;
  }
}
