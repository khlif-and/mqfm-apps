import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/view/splash_screen.dart';
import 'package:mqfm_apps/view/onboarding_screen.dart';
import 'package:mqfm_apps/view/auth/register_screen.dart';
import 'package:mqfm_apps/view/auth/login_form_screen.dart';
import 'package:mqfm_apps/view/home/dashboard/dashboard.dart';
import 'package:mqfm_apps/widgets/components/profile/profile_settings.dart';

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
  ],
);
