import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user_entity.dart';
import 'package:mqfm_apps/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class ProfileSettingsLogic extends ChangeNotifier {
  final IAuthRepository _authRepository = getIt<IAuthRepository>();

  UserEntity? user;
  bool isLoading = true;
  String? errorMessage;
  String? message;

  ProfileSettingsLogic() {
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    final result = await _authRepository.me();
    result.fold(
      (error) {
        errorMessage = error;
        isLoading = false;
        notifyListeners();
      },
      (data) {
        user = data;
        isLoading = false;
        notifyListeners();
      },
    );
  }

  Future<bool> logout() async {
    final result = await _authRepository.logout();
    await PreferencesHelper.removeToken();
    await PreferencesHelper.clearAll();
    message = "Berhasil logout";
    notifyListeners();
    return result.fold((error) => true, (msg) => true);
  }
}
