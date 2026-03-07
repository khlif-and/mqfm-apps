import 'package:flutter/foundation.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/features/auth/domain/interfaces/i_user_repository.dart';
import 'package:mqfm_apps/core/utils/helpers/log_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class UserManager {
  static final UserManager _instance = UserManager._internal();
  static UserManager get instance => _instance;

  UserManager._internal();

  final ValueNotifier<UserEntity?> currentUserNotifier = ValueNotifier(null);
  final ValueNotifier<bool> isLoadingNotifier = ValueNotifier(false);

  UserEntity? get currentUser => currentUserNotifier.value;

  void setUser(UserEntity user) {
    currentUserNotifier.value = user;
    LogHelper.success("UserManager", "User set: ${user.email}");
  }

  Future<bool> fetchUser() async {
    try {
      final token = await PreferencesHelper.getToken();
      if (token == null) {
        LogHelper.info("UserManager", "No token found, skipping fetchUser");
        return false;
      }

      isLoadingNotifier.value = true;
      LogHelper.info("UserManager", "Fetching user profile...");
      final result = await getIt<IAuthRepository>().me();

      return result.fold(
        (error) {
          LogHelper.error("UserManager", "Failed to fetch user: $error");
          PreferencesHelper.removeToken();
          return false;
        },
        (user) {
          // Preserve profilePicture from previous login response if /me doesn't return it
          final existingPicture = currentUserNotifier.value?.profilePicture;
          final updatedUser = (user.profilePicture == null && existingPicture != null)
              ? user.copyWith(profilePicture: existingPicture)
              : user;
          currentUserNotifier.value = updatedUser;
          LogHelper.success("UserManager", "User fetched: ${updatedUser.email}");
          return true;
        },
      );
    } catch (e) {
      LogHelper.error("UserManager", "Error fetching user: $e");
      await PreferencesHelper.removeToken();
      return false;
    } finally {
      isLoadingNotifier.value = false;
    }
  }

  void clear() {
    currentUserNotifier.value = null;
    isLoadingNotifier.value = false;
    LogHelper.info("UserManager", "User data cleared");
  }
}
