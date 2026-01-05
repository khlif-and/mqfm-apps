import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesHelper {
  static const String _authTokenKey = 'auth_token';
  static const String _historyKey = 'played_history';

  static final ValueNotifier<List<Audio>> historyNotifier = ValueNotifier([]);

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

  static Future<void> savePlayedAudio(Audio audio) async {
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

    currentList.insert(0, jsonEncode(audio.toJson()));

    if (currentList.length > 6) {
      currentList.removeRange(6, currentList.length);
    }

    await prefs.setStringList(_historyKey, currentList);

    await getPlayedAudios();
  }

  static Future<List<Audio>> getPlayedAudios() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> currentList = prefs.getStringList(_historyKey) ?? [];

    List<Audio> audios = [];
    for (String itemStr in currentList) {
      try {
        final Map<String, dynamic> json = jsonDecode(itemStr);
        audios.add(Audio.fromJson(json));
      } catch (e) {}
    }

    historyNotifier.value = audios;

    return audios;
  }
}
