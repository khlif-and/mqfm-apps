import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class RegisterLogic extends ChangeNotifier {
  final IAuthRepository _authRepository = getIt<IAuthRepository>();
  final ImagePicker _picker = ImagePicker();

  bool isLoading = false;
  String? errorMessage;
  String? successMessage;
  File? selectedImage;

  Future<void> pickImage() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      selectedImage = File(picked.path);
      notifyListeners();
    }
  }

  Future<bool> register(
    String username,
    String email,
    String password,
    File? profilePicture,
  ) async {
    isLoading = true;
    errorMessage = null;
    successMessage = null;
    notifyListeners();

    final result = await _authRepository.register(
      username,
      email,
      password,
      profilePicture ?? selectedImage,
    );

    return result.fold(
      (error) {
        errorMessage = "Gagal Daftar: $error";
        isLoading = false;
        notifyListeners();
        return false;
      },
      (user) async {
        if (user.token != null) {
          await PreferencesHelper.saveToken(user.token!);
        }
        successMessage = "Registrasi Berhasil! Hai ${user.username}";
        isLoading = false;
        notifyListeners();
        return true;
      },
    );
  }
}
