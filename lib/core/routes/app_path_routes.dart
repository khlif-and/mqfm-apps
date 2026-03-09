class AppPathRoutes {
  AppPathRoutes._();

  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String register = '/register';
  static const String login = '/login-form';
  static const String otpVerify = '/otp-verify';
  static const String onboardingPick = '/onboarding-pick';
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
  static const String mixDetail = '/mix-detail';
  static const String series = '/series';
  static const String events = '/events';
  static const String bookmarks = '/bookmarks';
  static const String notifications = '/notifications';
  static const String progress = '/progress';
  static const String resume = '/resume';
  static const String stats = '/stats';
  static const String vote = '/vote';
  static const String clips = '/clips';
  static const String preferences = '/preferences';
  static const String favoriteArtists = '/favorite-artists';
  static const String location = '/location';
  static const String collab = '/collab';

  static String playerWithId(String id) => '$player/$id';
  static String playlistDetailWithId(String id) => '$playlistDetail/$id';
  static String seriesDetailWithId(String id) => '$series/$id';
  static String collabWithPlaylistId(String id) => '$collab/$id';
}
