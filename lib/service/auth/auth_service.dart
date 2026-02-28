import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide AuthResponse;

class AuthService {
  static const String domainUrl =
      'https://angella-nevoid-becalmingly.ngrok-free.dev';

  static const String baseUrl = '$domainUrl/api/user/auth';

  Future<AuthResponse> register(
    String username,
    String email,
    String password,
    File? profilePicture,
  ) async {
    try {
      final url = '$baseUrl/register';
      log("POST Multipart Request ke: $url");

      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll({
        'username': username,
        'email': email,
        'password': password,
      });

      if (profilePicture != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'profile_picture',
            profilePicture.path,
          ),
        );
      }

      request.headers.addAll({'ngrok-skip-browser-warning': 'true'});

      http.StreamedResponse streamedResponse = await request.send();
      final responseBody = await streamedResponse.stream.bytesToString();

      log("Status: ${streamedResponse.statusCode}");
      log("Body: $responseBody");

      if (responseBody.isNotEmpty) {
        final json = jsonDecode(responseBody);
        return AuthResponse.fromJson(json);
      } else {
        throw Exception(
          "Server Error: Balasan kosong (Status ${streamedResponse.statusCode})",
        );
      }
    } catch (e) {
      log("Error Koneksi: $e");
      throw Exception(e.toString());
    }
  }

  Future<AuthResponse> login(String email, String password) async {
    return _postRequest('$baseUrl/login', {
      'email': email,
      'password': password,
    });
  }

  Future<AuthResponse> signInWithGoogle() async {
    final webClientId = dotenv.env['GOOGLE_WEB_CLIENT_ID'] ?? '';

    final googleSignIn = GoogleSignIn(serverClientId: webClientId);

    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      throw Exception('Login dibatalkan');
    }

    final googleAuth = await googleUser.authentication;
    final idToken = googleAuth.idToken;
    final accessToken = googleAuth.accessToken;

    if (idToken == null) {
      throw Exception('Gagal mendapatkan ID Token dari Google');
    }

    await Supabase.instance.client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );

    return _postRequest('$baseUrl/google', {'id_token': idToken});
  }

  Future<AuthResponse> me(String token) async {
    try {
      final url = '$baseUrl/me';
      log("GET Request ke: $url");

      final response = await http.get(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'ngrok-skip-browser-warning': 'true',
          'Authorization': 'Bearer $token',
        },
      );

      log("Status: ${response.statusCode}");
      log("Body: ${response.body}");

      if (response.body.isNotEmpty) {
        final json = jsonDecode(response.body);
        return AuthResponse.fromJson(json);
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

  Future<AuthResponse> logout(String token) async {
    try {
      final url = '$baseUrl/logout';
      log("POST Request ke: $url");

      final response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'ngrok-skip-browser-warning': 'true',
          'Authorization': 'Bearer $token',
        },
      );

      log("Status: ${response.statusCode}");
      log("Body: ${response.body}");

      if (response.body.isNotEmpty) {
        final json = jsonDecode(response.body);
        return AuthResponse.fromJson(json);
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

  Future<AuthResponse> _postRequest(
    String url,
    Map<String, String> body,
  ) async {
    try {
      log("POST Request ke: $url");

      final response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'ngrok-skip-browser-warning': 'true',
        },
        body: jsonEncode(body),
      );

      log("Status: ${response.statusCode}");
      log("Body: ${response.body}");

      if (response.body.isNotEmpty) {
        final json = jsonDecode(response.body);
        return AuthResponse.fromJson(json);
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

  Future<AuthResponse> updateProfile(
    String token,
    int userId, {
    String? username,
    File? profilePicture,
  }) async {
    try {
      final url = '$baseUrl/update/$userId';
      log("PUT Multipart Request ke: $url");

      var request = http.MultipartRequest('PUT', Uri.parse(url));
      request.headers.addAll({
        'ngrok-skip-browser-warning': 'true',
        'Authorization': 'Bearer $token',
      });

      if (username != null && username.isNotEmpty) {
        request.fields['username'] = username;
      }

      if (profilePicture != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'profile_picture',
            profilePicture.path,
          ),
        );
      }

      http.StreamedResponse streamedResponse = await request.send();
      final responseBody = await streamedResponse.stream.bytesToString();

      log("Status: ${streamedResponse.statusCode}");
      log("Body: $responseBody");

      if (responseBody.isNotEmpty) {
        final json = jsonDecode(responseBody);
        return AuthResponse.fromJson(json);
      } else {
        throw Exception(
          "Server Error: Balasan kosong (Status ${streamedResponse.statusCode})",
        );
      }
    } catch (e) {
      log("Error Koneksi: $e");
      throw Exception(e.toString());
    }
  }
}
