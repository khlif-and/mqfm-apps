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
import 'package:mqfm_apps/presentation/pages/auth/otp_verify_page.dart';
import 'package:mqfm_apps/presentation/pages/onboarding/onboarding_pick_page.dart';
import 'package:mqfm_apps/presentation/pages/onboarding/onboarding_result_page.dart';
import 'package:mqfm_apps/presentation/pages/search/mix_detail_page.dart';
import 'package:mqfm_apps/presentation/pages/series/series_page.dart';
import 'package:mqfm_apps/presentation/pages/series/series_detail_page.dart';
import 'package:mqfm_apps/presentation/pages/event/event_page.dart';
import 'package:mqfm_apps/presentation/pages/bookmark/bookmark_page.dart';
import 'package:mqfm_apps/presentation/pages/notification/notification_page.dart';
import 'package:mqfm_apps/presentation/pages/progress/progress_page.dart';
import 'package:mqfm_apps/presentation/pages/resume/resume_page.dart';
import 'package:mqfm_apps/presentation/pages/stats/stats_page.dart';
import 'package:mqfm_apps/presentation/pages/vote/vote_page.dart';
import 'package:mqfm_apps/presentation/pages/clip/clip_page.dart';
import 'package:mqfm_apps/presentation/pages/preferences/preferences_page.dart';
import 'package:mqfm_apps/presentation/pages/favorite_artist/favorite_artist_page.dart';
import 'package:mqfm_apps/presentation/pages/location/location_page.dart';
import 'package:mqfm_apps/presentation/pages/collab/collab_page.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

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
      path: AppPathRoutes.otpVerify,
      pageBuilder: (context, state) {
        final email = state.uri.queryParameters['email'] ?? '';
        return NoTransitionPage(child: OtpVerifyPage(email: email));
      },
    ),
    GoRoute(
      path: AppPathRoutes.onboardingPick,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: OnboardingPickPage()),
    ),
    GoRoute(
      path: '/onboarding-result',
      pageBuilder: (context, state) {
        final ids = state.extra as List<int>? ?? [];
        return NoTransitionPage(child: OnboardingResultPage(selectedIds: ids));
      },
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
    GoRoute(
      path: AppPathRoutes.mixDetail,
      pageBuilder: (context, state) {
        final audios = state.extra as List<AudioEntity>;
        return NoTransitionPage(child: MixDetailPage(audios: audios));
      },
    ),
    GoRoute(
      path: AppPathRoutes.series,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: SeriesPage()),
    ),
    GoRoute(
      path: '${AppPathRoutes.series}/:id',
      pageBuilder: (context, state) {
        final id = state.pathParameters['id']!;
        return NoTransitionPage(child: SeriesDetailPage(seriesId: id));
      },
    ),
    GoRoute(
      path: AppPathRoutes.events,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: EventPage()),
    ),
    GoRoute(
      path: AppPathRoutes.bookmarks,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: BookmarkPage()),
    ),
    GoRoute(
      path: AppPathRoutes.notifications,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: NotificationPage()),
    ),
    GoRoute(
      path: AppPathRoutes.progress,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: ProgressPage()),
    ),
    GoRoute(
      path: AppPathRoutes.resume,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: ResumePage()),
    ),
    GoRoute(
      path: AppPathRoutes.stats,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: StatsPage()),
    ),
    GoRoute(
      path: AppPathRoutes.vote,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: VotePage()),
    ),
    GoRoute(
      path: AppPathRoutes.clips,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: ClipPage()),
    ),
    GoRoute(
      path: AppPathRoutes.preferences,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: PreferencesPage()),
    ),
    GoRoute(
      path: AppPathRoutes.favoriteArtists,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: FavoriteArtistPage()),
    ),
    GoRoute(
      path: AppPathRoutes.location,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: LocationPage()),
    ),
    GoRoute(
      path: '${AppPathRoutes.collab}/:id',
      pageBuilder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);
        return NoTransitionPage(child: CollabPage(playlistId: id));
      },
    ),
  ],
);
