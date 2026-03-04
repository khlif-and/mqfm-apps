import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/auth/domain/repositories/auth_repository.dart';

class EditProfileLogic extends ChangeNotifier {
  final AuthRepository _authRepository = getIt<AuthRepository>();

  bool isLoading = false;
  String? errorMessage;
  String? successMessage;

  Future<bool> updateProfile(
    int userId, {
    String? username,
    String? email,
    File? profilePicture,
  }) async {
    isLoading = true;
    errorMessage = null;
    successMessage = null;
    notifyListeners();

    final result = await _authRepository.updateProfile(
      userId,
      username: username,
      email: email,
      profilePicture: profilePicture,
    );

    return result.fold(
      (error) {
        errorMessage = "Gagal update: $error";
        isLoading = false;
        notifyListeners();
        return false;
      },
      (user) {
        successMessage = "Profil berhasil diperbarui!";
        isLoading = false;
        notifyListeners();
        return true;
      },
    );
  }
}
