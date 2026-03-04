import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.surfaceHighlight.withOpacity(0.3),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(0.15),
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/img_splash.png',
            width: 110.w,
            height: 110.w,
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          'MQFM APPS',
          style: TextStyle(
            fontSize: 26.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 6.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: AppColors.primary.withOpacity(0.3)),
          ),
          child: Text(
            'Versi 1.0.0',
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.primaryClassic,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
