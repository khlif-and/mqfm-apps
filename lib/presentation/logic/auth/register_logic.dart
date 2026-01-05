import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mqfm_apps/controller/auth/auth_controller.dart';
import 'package:mqfm_apps/utils/helpers/log_helper.dart';

class RegisterLogic extends ChangeNotifier {
  final AuthController _authController = AuthController();
  final ImagePicker _picker = ImagePicker();

  bool isLoading = false;
  String? errorMessage;
  String? successMessage;
  File? selectedImage;

  Future<void> pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        selectedImage = File(image.path);
        notifyListeners();
      }
    } catch (e) {
      LogHelper.error("RegisterLogic", "Error picking image: $e");
    }
  }

  Future<bool> register(String username, String email, String password) async {
    isLoading = true;
    errorMessage = null;
    successMessage = null;
    notifyListeners();

    try {
      LogHelper.info(
        "RegisterLogic",
        "Attempting registration for $username ($email)",
      );
      final response = await _authController.register(
        username,
        email,
        password,
        selectedImage,
      );

      if (response.status == 201) {
        successMessage = "Berhasil: ${response.message}";
        LogHelper.success(
          "RegisterLogic",
          "Registration successful for $username",
        );
        isLoading = false;
        notifyListeners();
        return true;
      } else {
        errorMessage = "Gagal: ${response.message}";
        LogHelper.error(
          "RegisterLogic",
          "Registration failed: ${response.message}",
        );
        isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (e, stackTrace) {
      errorMessage = "Error: ${e.toString().replaceAll("Exception: ", "")}";
      LogHelper.error(
        "RegisterLogic",
        "Exception during registration",
        stackTrace,
      );
      isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
