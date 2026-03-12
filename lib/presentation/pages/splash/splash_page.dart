import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/log_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  Future<void> _navigateToNext() async {
    LogHelper.info("SplashScreen", "Start Navigation Logic");

    final minSplashDuration = Future.delayed(const Duration(seconds: 3));

    final token = await PreferencesHelper.getToken();
    LogHelper.info("SplashScreen", "Token found? ${token != null}");
    bool isTokenValid = false;

    if (token != null && token.isNotEmpty) {
      LogHelper.info("SplashScreen", "Fetching user...");
      try {
        isTokenValid = await UserManager.instance.fetchUser();
        if (isTokenValid) {
          LogHelper.success("SplashScreen", "User valid");
        } else {
          final stillHasToken = await PreferencesHelper.getToken();
          if (stillHasToken != null && stillHasToken.isNotEmpty) {
            LogHelper.info("SplashScreen", "Network issue but token exists, proceeding");
            isTokenValid = true;
          } else {
            LogHelper.info("SplashScreen", "Token invalid/expired");
          }
        }
      } catch (e) {
        LogHelper.error("SplashScreen", "Error fetching user: $e");
        isTokenValid = true;
      }
    }

    LogHelper.info("SplashScreen", "Waiting for duration...");
    await minSplashDuration;
    LogHelper.info("SplashScreen", "Duration done. Mounted? $mounted");

    if (mounted) {
      if (isTokenValid) {
        final pickDone = await PreferencesHelper.isOnboardingPickDone();
        if (mounted) {
          if (pickDone) {
            context.go(AppPathRoutes.dashboard);
          } else {
            context.go(AppPathRoutes.onboardingPick);
          }
        }
      } else {
        LogHelper.info("SplashScreen", "Go to Onboarding");
        context.go(AppPathRoutes.onboarding);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset('assets/images/img_splash.png', width: AppDims.w200),
      ),
    );
  }
}