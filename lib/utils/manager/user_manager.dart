import 'package:flutter/foundation.dart';
import 'package:mqfm_apps/controller/auth/auth_controller.dart';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:mqfm_apps/utils/helpers/log_helper.dart';
import 'package:mqfm_apps/utils/helpers/preferences_helper.dart';

class UserManager {
  // Singleton instance
  static final UserManager _instance = UserManager._internal();
  static UserManager get instance => _instance;

  UserManager._internal();

  final AuthController _authController = AuthController();

  // Observable user data
  final ValueNotifier<UserData?> currentUserNotifier = ValueNotifier(null);
  final ValueNotifier<bool> isLoadingNotifier = ValueNotifier(false);

  UserData? get currentUser => currentUserNotifier.value;

  // Fetch user profile from API (me endpoint)
  Future<void> fetchUser() async {
    try {
      final token = await PreferencesHelper.getToken();
      if (token == null) {
        LogHelper.info("UserManager", "No token found, skipping fetchUser");
        return;
      }

      isLoadingNotifier.value = true;
      LogHelper.info("UserManager", "Fetching user profile...");
      final response = await _authController.me(token);

      if (response.status == 200 && response.data != null) {
        currentUserNotifier.value = response.data;
        LogHelper.success(
          "UserManager",
          "User fetched: ${response.data!.email}",
        );
      } else {
        LogHelper.error(
          "UserManager",
          "Failed to fetch user: ${response.message}",
        );
        // Optionally handle token expiration here
      }
    } catch (e) {
      LogHelper.error("UserManager", "Error fetching user: $e");
    } finally {
      isLoadingNotifier.value = false;
    }
  }

  // Clear user data (logout)
  void clear() {
    currentUserNotifier.value = null;
    isLoadingNotifier.value = false;
    LogHelper.info("UserManager", "User data cleared");
  }
}
