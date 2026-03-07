class AppPathRoutes {
  AppPathRoutes._();

  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String register = '/register';
  static const String login = '/login-form';
  static const String dashboard = '/dashboard';
  static const String search = '/search';
  static const String playlist = '/playlist';
  static const String settings = '/settings';
  static const String player = '/player';
  static const String playlistDetail = '/playlist';
  static const String favorites = '/favorites';
  static const String history = '/history';
  static const String editProfile = '/edit-profile';
  static const String about = '/about';
  static const String help = '/help';
  static const String downloads = '/downloads';

  static String playerWithId(String id) => '$player/$id';
  static String playlistDetailWithId(String id) => '$playlistDetail/$id';
}
