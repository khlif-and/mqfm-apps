import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/view/splash_screen.dart';
import 'package:mqfm_apps/view/onboarding_screen.dart';
import 'package:mqfm_apps/view/auth/register_screen.dart';
import 'package:mqfm_apps/view/auth/login_form_screen.dart';
import 'package:mqfm_apps/view/home/dashboard/dashboard.dart';
import 'package:mqfm_apps/widgets/components/playlist/playlist_screen.dart';
import 'package:mqfm_apps/widgets/components/playlist/playlist_detail_screen.dart';
import 'package:mqfm_apps/widgets/components/profile/profile_settings.dart';
import 'package:mqfm_apps/widgets/components/player/player_screen.dart';
import 'package:mqfm_apps/widgets/components/search/search_screen.dart';
import 'package:mqfm_apps/widgets/components/library/liked_audios_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: SplashScreen()),
    ),
    GoRoute(
      path: '/onboarding',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: OnboardingScreen()),
    ),
    GoRoute(
      path: '/register',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: RegisterScreen()),
    ),
    GoRoute(
      path: '/login-form',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: LoginFormScreen()),
    ),
    GoRoute(
      path: '/dashboard',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: DashboardPage()),
    ),
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: ProfileSettings()),
    ),
    GoRoute(
      path: '/player/:id',
      pageBuilder: (context, state) {
        final id = state.pathParameters['id']!;
        return NoTransitionPage(child: PlayerScreen(audioId: id));
      },
    ),
    GoRoute(
      path: '/search',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: SearchScreen()),
    ),
    GoRoute(
      path: '/playlist',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: PlaylistScreen()),
    ),
    GoRoute(
      path: '/playlist/:id',
      pageBuilder: (context, state) {
        final id = state.pathParameters['id']!;
        return NoTransitionPage(child: PlaylistDetailScreen(playlistId: id));
      },
    ),
    GoRoute(
      path: '/favorites',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: LikedAudiosScreen()),
    ),
  ],
);
