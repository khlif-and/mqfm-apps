import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(AppDims.r20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.surfaceHighlight.withOpacity(0.3),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(0.15),
                blurRadius: AppDims.r30,
                spreadRadius: AppDims.r5,
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/img_splash.png',
            width: AppDims.w110,
            height: AppDims.w110,
          ),
        ),
        SizedBox(height: AppDims.h24),
        Text(
          'MQFM APPS',
          style: TextStyle(
            fontSize: AppDims.sp26,
            fontWeight: FontWeight.w800,
            color: AppColors.textWhite,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: AppDims.h6),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppDims.w12,
            vertical: AppDims.h4,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppDims.r20),
            border: Border.all(color: AppColors.primary.withOpacity(0.3)),
          ),
          child: Text(
            'Versi 1.0.0',
            style: TextStyle(
              fontSize: AppDims.sp12,
              color: AppColors.primaryClassic,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
