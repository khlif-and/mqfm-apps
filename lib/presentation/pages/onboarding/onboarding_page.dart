import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_styles.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/img_splash.png',
                width: AppDims.w250,
                fit: BoxFit.contain,
              ),

              SizedBox(height: AppDims.h48),

              Text(
                AppStrings.onboardingTagline1,
                style: AppStyles.titleMedium.copyWith(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                  fontSize: AppDims.sp18,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                AppStrings.onboardingTagline2,
                style: AppStyles.titleMedium.copyWith(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                  fontSize: AppDims.sp18,
                ),
                textAlign: TextAlign.center,
              ),

              const Spacer(),

              CustomButton(
                text: AppStrings.btnDaftar,
                onPressed: () {
                  context.push(AppPathRoutes.register);
                },
                backgroundColor: AppColors.primary,
                textColor: AppColors.backgroundBlack,
              ),

              SizedBox(height: AppDims.h16),

              CustomButton(
                text: AppStrings.btnLoginMQFM,
                onPressed: () {
                  context.push(AppPathRoutes.login);
                },
                backgroundColor: AppColors.transparent,
                textColor: AppColors.textWhite,
                borderColor: AppColors.textSecondary,
              ),

              SizedBox(height: AppDims.h40),
            ],
          ),
        ),
      ),
    );
  }
}