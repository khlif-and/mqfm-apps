import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mqfm_apps/core/my_app.dart';
import 'package:mqfm_apps/core/config/app_config.dart';
import 'package:mqfm_apps/core/config/app_flavor.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppConfig.init(
    flavor: AppFlavor.staging,
    appName: 'MQFM Staging',
    envFile: '.env.staging',
  );

  try {
    await dotenv.load(fileName: AppConfig.instance.envFile);
  } catch (_) {
    try {
      await dotenv.load(fileName: '.env');
    } catch (_) {}
  }

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'] ?? '',
    anonKey: dotenv.env['SUPABASE_ANON_KEY'] ?? '',
  );

  configureDependencies();

  await AudioPlayerManager().init();

  runApp(const MyApp());
}
