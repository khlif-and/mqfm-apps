import 'dart:io';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:mqfm_apps/service/auth/auth_service.dart';

class AuthController {
  final AuthService _authService = AuthService();

  Future<AuthResponse> register(
    String username,
    String email,
    String password,
    File? profilePicture,
  ) async {
    return await _authService.register(
      username,
      email,
      password,
      profilePicture,
    );
  }

  Future<AuthResponse> login(String email, String password) async {
    return await _authService.login(email, password);
  }

  Future<AuthResponse> signInWithGoogle() async {
    return await _authService.signInWithGoogle();
  }

  Future<AuthResponse> me(String token) async {
    return await _authService.me(token);
  }

  Future<AuthResponse> logout(String token) async {
    return await _authService.logout(token);
  }

  Future<AuthResponse> updateProfile(
    String token,
    int userId, {
    String? username,
    File? profilePicture,
  }) async {
    return await _authService.updateProfile(
      token,
      userId,
      username: username,
      profilePicture: profilePicture,
    );
  }
}
