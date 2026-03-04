import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/auth/domain/repositories/auth_repository.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class LoginLogic extends ChangeNotifier {
  final AuthRepository _authRepository = getIt<AuthRepository>();

  bool isLoading = false;
  bool isGoogleLoading = false;
  String? errorMessage;
  String? successMessage;

  Future<bool> login(String email, String password) async {
    isLoading = true;
    errorMessage = null;
    successMessage = null;
    notifyListeners();

    final result = await _authRepository.login(email, password);
    return result.fold(
      (error) {
        errorMessage = "Gagal Masuk: $error";
        isLoading = false;
        notifyListeners();
        return false;
      },
      (user) async {
        if (user.token != null) {
          await PreferencesHelper.saveToken(user.token!);
        }
        successMessage = "Login Berhasil! Hai ${user.username}";
        isLoading = false;
        notifyListeners();
        return true;
      },
    );
  }

  Future<bool> signInWithGoogle() async {
    isGoogleLoading = true;
    errorMessage = null;
    successMessage = null;
    notifyListeners();

    final result = await _authRepository.signInWithGoogle();
    return result.fold(
      (error) {
        errorMessage = "Gagal Masuk: $error";
        isGoogleLoading = false;
        notifyListeners();
        return false;
      },
      (user) async {
        if (user.token != null) {
          await PreferencesHelper.saveToken(user.token!);
        }
        successMessage = "Login Berhasil! Hai ${user.username}";
        isGoogleLoading = false;
        notifyListeners();
        return true;
      },
    );
  }
}
