import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/presentation/pages/splash/splash_page.dart';
import 'package:mqfm_apps/presentation/pages/onboarding/onboarding_page.dart';
import 'package:mqfm_apps/presentation/pages/auth/register_page.dart';
import 'package:mqfm_apps/presentation/pages/auth/login_page.dart';
import 'package:mqfm_apps/presentation/pages/shell/main_shell_page.dart';
import 'package:mqfm_apps/presentation/pages/profile/profile_settings_page.dart';
import 'package:mqfm_apps/presentation/pages/player/player_page.dart';
import 'package:mqfm_apps/presentation/pages/playlist/playlist_detail_page.dart';
import 'package:mqfm_apps/presentation/pages/library/liked_audios_page.dart';
import 'package:mqfm_apps/presentation/pages/history/history_page.dart';
import 'package:mqfm_apps/presentation/pages/profile/edit_profile_page.dart';
import 'package:mqfm_apps/presentation/pages/about/about_app_page.dart';
import 'package:mqfm_apps/presentation/pages/help/help_faq_page.dart';
import 'package:mqfm_apps/presentation/pages/download/downloads_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppPathRoutes.splash,
  routes: [
    GoRoute(
      path: AppPathRoutes.splash,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: SplashScreen()),
    ),
    GoRoute(
      path: AppPathRoutes.onboarding,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: OnboardingScreen()),
    ),
    GoRoute(
      path: AppPathRoutes.register,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: RegisterPage()),
    ),
    GoRoute(
      path: AppPathRoutes.login,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: LoginPage()),
    ),
    GoRoute(
      path: AppPathRoutes.dashboard,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: MainShellPage()),
    ),
    GoRoute(
      path: AppPathRoutes.search,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: MainShellPage(initialIndex: 1)),
    ),
    GoRoute(
      path: AppPathRoutes.playlist,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: MainShellPage(initialIndex: 2)),
    ),
    GoRoute(
      path: AppPathRoutes.settings,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: ProfileSettingsPage()),
    ),
    GoRoute(
      path: '${AppPathRoutes.player}/:id',
      pageBuilder: (context, state) {
        final id = state.pathParameters['id']!;
        return NoTransitionPage(child: PlayerPage(audioId: id));
      },
    ),
    GoRoute(
      path: '${AppPathRoutes.playlistDetail}/:id',
      pageBuilder: (context, state) {
        final id = state.pathParameters['id']!;
        return NoTransitionPage(child: PlaylistDetailPage(playlistId: id));
      },
    ),
    GoRoute(
      path: AppPathRoutes.favorites,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: LikedAudiosPage()),
    ),
    GoRoute(
      path: AppPathRoutes.history,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: HistoryPage()),
    ),
    GoRoute(
      path: AppPathRoutes.editProfile,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: EditProfilePage()),
    ),
    GoRoute(
      path: AppPathRoutes.about,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: AboutAppPage()),
    ),
    GoRoute(
      path: AppPathRoutes.help,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: HelpFaqPage()),
    ),
    GoRoute(
      path: AppPathRoutes.downloads,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: DownloadsPage()),
    ),
  ],
);
