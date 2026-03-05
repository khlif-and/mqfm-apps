import 'package:mqfm_apps/features/auth/domain/entities/user_entity.dart';

class ProfilePicLogic {
  static String getDisplayUsername(UserEntity? userData) {
    if (userData == null) {
      return 'User';
    }

    final username = userData.username;
    return username.length > 13 ? '${username.substring(0, 13)}..' : username;
  }
}
