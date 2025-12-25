import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart'; // Pastikan import GoRouter
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/utils/app_dims.dart';
import 'package:mqfm_apps/utils/app_styles.dart';
import 'package:mqfm_apps/utils/app_strings.dart';
import 'package:mqfm_apps/widgets/custom_button.dart';

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
              // Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.radio, color: Colors.white, size: 40.w),
                  SizedBox(width: AppDims.w12),
                  Text(
                    "102.7 MQFM",
                    style: AppStyles.displayLarge.copyWith(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                "manajemen qolbu",
                style: AppStyles.bodySmall.copyWith(
                  color: Colors.white70,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: AppDims.h48),

              // Taglines
              Text(
                AppStrings.onboardingTagline1,
                style: AppStyles.titleMedium.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                AppStrings.onboardingTagline2,
                style: AppStyles.titleMedium.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.center,
              ),

              const Spacer(),

              // Buttons
              CustomButton(
                text: AppStrings.btnDaftar,
                onPressed: () {
                  // Navigasi ke Register Screen menggunakan GoRouter
                  context.push('/register');
                },
                backgroundColor: AppColors.primary,
                textColor: Colors.black,
              ),

              SizedBox(height: AppDims.h16),

              CustomButton(
                text: AppStrings.btnLoginMQFM,
                onPressed: () {
                  // Navigasi ke Login Form menggunakan GoRouter
                  context.push('/login-form');
                },
                backgroundColor: Colors.transparent,
                textColor: Colors.white,
                borderColor: Colors.white54,
              ),

              SizedBox(height: AppDims.h40),
            ],
          ),
        ),
      ),
    );
  }
}
