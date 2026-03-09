import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';

class OnboardingResultPage extends StatefulWidget {
  final List<int> selectedIds;

  const OnboardingResultPage({super.key, required this.selectedIds});

  @override
  State<OnboardingResultPage> createState() => _OnboardingResultPageState();
}

class _OnboardingResultPageState extends State<OnboardingResultPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (mounted) context.go(AppPathRoutes.dashboard);
    });
  }

  @override
  Widget build(BuildContext context) {
    final count = widget.selectedIds.length;
    final user = UserManager.instance.currentUserNotifier.value;
    final name = (user?.username ?? '').isNotEmpty ? user!.username : 'kamu';

    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 60.0 + (count - 1) * 30.0,
                height: 80,
                child: Stack(
                  alignment: Alignment.center,
                  children: List.generate(count > 5 ? 5 : count, (i) {
                    return Positioned(
                      left: i * 30.0,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.surfaceCard,
                          border: Border.all(color: AppColors.backgroundBlack, width: 3),
                        ),
                        child: ClipOval(
                          child: Icon(Icons.music_note, color: AppColors.primaryClassic, size: AppDims.sp24),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: AppDims.h30),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp22, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: '$count', style: const TextStyle(color: Color(0xFFDBCD5D))),
                    TextSpan(text: ' Pilihan yang bagus, $name'),
                  ],
                ),
              ),
              SizedBox(height: AppDims.h16),
              Text(
                'Kami akan menyesuaikan rekomendasi untukmu',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp14),
              ),
              SizedBox(height: AppDims.h30),
              SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppColors.primaryClassic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
