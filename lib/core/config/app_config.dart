import 'package:mqfm_apps/core/config/app_flavor.dart';

class AppConfig {
  static AppConfig? _instance;

  final AppFlavor flavor;
  final String appName;
  final String envFile;

  AppConfig._({
    required this.flavor,
    required this.appName,
    required this.envFile,
  });

  static AppConfig get instance {
    assert(_instance != null, 'AppConfig.init() must be called before accessing instance');
    return _instance!;
  }

  static void init({
    required AppFlavor flavor,
    required String appName,
    required String envFile,
  }) {
    _instance = AppConfig._(
      flavor: flavor,
      appName: appName,
      envFile: envFile,
    );
  }

  bool get isDev => flavor == AppFlavor.dev;
  bool get isStaging => flavor == AppFlavor.staging;
  bool get isProduction => flavor == AppFlavor.production;
}
