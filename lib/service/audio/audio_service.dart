import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:mqfm_apps/model/audio/audio_model.dart';

class AudioService {
  // GANTI URL INI DENGAN NGROK TERBARU ANDA
  static const String domainUrl =
      'https://angella-nevoid-becalmingly.ngrok-free.dev';

  // Endpoint Audios
  static const String baseUrl = '$domainUrl/api/audios';

  // --- GET ALL AUDIOS ---
  Future<AudioResponse> getAudios() async {
    try {
      log("GET Request ke: $baseUrl");

      final response = await http.get(
        Uri.parse(baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'ngrok-skip-browser-warning': 'true',
        },
      );

      log("Status Audio: ${response.statusCode}");

      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final json = jsonDecode(response.body);
        return AudioResponse.fromJson(json);
      } else {
        throw Exception("Gagal memuat audio: ${response.statusCode}");
      }
    } catch (e) {
      log("Error Service Audio: $e");
      throw Exception(e.toString());
    }
  }

  // --- GET AUDIO BY ID (DETAIL) [BARU] ---
  Future<SingleAudioResponse> getAudioById(int id) async {
    try {
      // Gabungkan Base URL dengan ID (Contoh: .../api/audios/1)
      final url = '$baseUrl/$id';
      log("GET Detail Request ke: $url");

      final response = await http.get(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'ngrok-skip-browser-warning': 'true',
        },
      );

      log("Status Detail Audio: ${response.statusCode}");

      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final json = jsonDecode(response.body);
        // Gunakan SingleAudioResponse
        return SingleAudioResponse.fromJson(json);
      } else {
        throw Exception("Gagal memuat detail audio: ${response.statusCode}");
      }
    } catch (e) {
      log("Error Service Detail Audio: $e");
      throw Exception(e.toString());
    }
  }
}
