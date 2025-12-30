import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/model/like/like_model.dart';

class LikeService {
  static const String domainUrl =
      'https://angella-nevoid-becalmingly.ngrok-free.dev';

  static const String baseUrl = '$domainUrl/api/user/likes/';

  Future<LikeResponse> toggleLike(String token, int audioId) async {
    try {
      log("POST Request ke: $baseUrl");

      final response = await http.post(
        Uri.parse(baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'ngrok-skip-browser-warning': 'true',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({'audio_id': audioId}),
      );

      log("Status: ${response.statusCode}");
      log("Body: ${response.body}");

      if (response.body.isNotEmpty) {
        final json = jsonDecode(response.body);
        return LikeResponse.fromJson(json);
      } else {
        throw Exception(
          "Server Error: Balasan kosong (Status ${response.statusCode})",
        );
      }
    } catch (e) {
      log("Error Koneksi: $e");
      throw Exception(e.toString());
    }
  }

  Future<AudioResponse> getLikedAudios(String token) async {
    try {
      log("GET Request ke: $baseUrl");

      final response = await http.get(
        Uri.parse(baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'ngrok-skip-browser-warning': 'true',
          'Authorization': 'Bearer $token',
        },
      );

      log("Status Likes: ${response.statusCode}");
      log("Body Likes: ${response.body}");

      if (response.body.isNotEmpty) {
        final json = jsonDecode(response.body);
        return AudioResponse.fromJson(json);
      } else {
        throw Exception(
          "Server Error: Balasan kosong (Status ${response.statusCode})",
        );
      }
    } catch (e) {
      log("Error Koneksi: $e");
      throw Exception(e.toString());
    }
  }
}
