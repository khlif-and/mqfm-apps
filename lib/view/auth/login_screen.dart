import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart'; // Import GoRouter
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/utils/app_dims.dart';
import 'package:mqfm_apps/utils/app_styles.dart';
import 'package:mqfm_apps/utils/app_strings.dart';
import 'package:mqfm_apps/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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

              Text(
                AppStrings.landingTitle,
                style: AppStyles.titleLarge.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                ),
                textAlign: TextAlign.center,
              ),

              const Spacer(),

              CustomButton(
                text: AppStrings.btnLanjutEmail,
                icon: const Icon(Icons.email_outlined, color: Colors.black),
                onPressed: () {
                  // Menggunakan GoRouter untuk pindah instant ke Register
                  context.push('/register');
                },
                backgroundColor: AppColors.primary,
                textColor: Colors.black,
              ),

              SizedBox(height: AppDims.h16),

              CustomButton(
                text: AppStrings.btnLanjutMobile,
                icon: const Icon(Icons.smartphone, color: Colors.white),
                onPressed: () {},
                backgroundColor: Colors.transparent,
                textColor: Colors.white,
                borderColor: Colors.white30,
              ),

              SizedBox(height: AppDims.h16),

              CustomButton(
                text: AppStrings.btnLoginGoogle,
                icon: Icon(Icons.g_mobiledata, color: Colors.blue, size: 28.w),
                onPressed: () {},
                backgroundColor: Colors.transparent,
                textColor: Colors.white,
                borderColor: Colors.white30,
              ),

              SizedBox(height: 32.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.labelSudahPunyaAkun,
                    style: AppStyles.bodyMedium.copyWith(color: Colors.white70),
                  ),
                  SizedBox(width: AppDims.w4),
                  GestureDetector(
                    onTap: () {
                      // Menggunakan GoRouter untuk pindah instant ke Login Form
                      context.push('/login-form');
                    },
                    child: Text(
                      AppStrings.btnLog_in,
                      style: AppStyles.bodyMedium.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
