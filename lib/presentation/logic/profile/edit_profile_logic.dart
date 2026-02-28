import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mqfm_apps/controller/auth/auth_controller.dart';
import 'package:mqfm_apps/utils/helpers/log_helper.dart';
import 'package:mqfm_apps/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/utils/manager/user_manager.dart';

class EditProfileLogic extends ChangeNotifier {
  final AuthController _controller = AuthController();

  bool isLoading = false;
  String? successMessage;
  String? errorMessage;

  Future<bool> updateProfile({String? username, File? profilePicture}) async {
    isLoading = true;
    successMessage = null;
    errorMessage = null;
    notifyListeners();

    try {
      final String? token = await PreferencesHelper.getToken();
      final user = UserManager.instance.currentUser;

      if (token == null || user == null) {
        errorMessage = "Silakan login terlebih dahulu";
        isLoading = false;
        notifyListeners();
        return false;
      }

      LogHelper.info(
        "EditProfileLogic",
        "Updating profile for user ${user.id}",
      );

      final response = await _controller.updateProfile(
        token,
        user.id,
        username: username,
        profilePicture: profilePicture,
      );

      if (response.status == 200) {
        successMessage = response.message;
        await UserManager.instance.fetchUser();
        LogHelper.success("EditProfileLogic", "Profile updated successfully");
        isLoading = false;
        notifyListeners();
        return true;
      } else {
        errorMessage = response.message;
        LogHelper.error("EditProfileLogic", "Failed: ${response.message}");
        isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (e, stackTrace) {
      errorMessage = "Gagal memperbarui profil. Periksa koneksi internet.";
      LogHelper.error(
        "EditProfileLogic",
        "Exception updating profile",
        stackTrace,
      );
      isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
