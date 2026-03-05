import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
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
          LogHelper.info("SplashScreen", "User invalid/expired");
        }
      } catch (e) {
        LogHelper.error("SplashScreen", "Error fetching user: $e");
        await PreferencesHelper.removeToken();
      }
    }

    LogHelper.info("SplashScreen", "Waiting for duration...");
    await minSplashDuration;
    LogHelper.info("SplashScreen", "Duration done. Mounted? $mounted");

    if (mounted) {
      if (isTokenValid) {
        LogHelper.info("SplashScreen", "Go to Dashboard");
        context.go('/dashboard');
      } else {
        LogHelper.info("SplashScreen", "Go to Onboarding");
        context.go('/onboarding');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset('assets/images/img_splash.png', width: 200.w),
      ),
    );
  }
}
