import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class GoogleAuthCard {
  static void showError(BuildContext context, String message) {
    showDialog(
      context: context,
      barrierColor: AppColors.barrierDark,
      builder: (context) {
        return Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: AppDims.w32),
            padding: EdgeInsets.all(AppDims.w24),
            decoration: BoxDecoration(
              color: AppColors.surfaceCard,
              borderRadius: BorderRadius.circular(AppDims.r16),
              border: Border.all(
                color: AppColors.error.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
            child: Material(
              color: AppColors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(AppDims.r12),
                    decoration: BoxDecoration(
                      color: AppColors.error.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.error_outline_rounded,
                      color: AppColors.error,
                      size: AppDims.sp32,
                    ),
                  ),
                  SizedBox(height: AppDims.h16),
                  Text(
                    'Login Google Gagal',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: AppDims.sp16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppDims.h8),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp13,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: AppDims.h20),
                  SizedBox(
                    width: double.infinity,
                    height: AppDims.h40,
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.error.withValues(alpha: 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppDims.r10),
                        ),
                      ),
                      child: Text(
                        'Tutup',
                        style: TextStyle(
                          color: AppColors.error,
                          fontSize: AppDims.sp14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
