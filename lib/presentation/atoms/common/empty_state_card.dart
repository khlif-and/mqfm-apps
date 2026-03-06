import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class EmptyStateCard extends StatelessWidget {
  final String message;
  final IconData icon;

  const EmptyStateCard({
    super.key,
    this.message = 'Belum ada data saat ini',
    this.icon = Icons.inbox_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: AppDims.h40, horizontal: AppDims.w24),
      decoration: BoxDecoration(
        color: AppColors.surfaceDim,
        borderRadius: BorderRadius.circular(AppDims.r12),
        border: Border.all(color: AppColors.textWhite.withOpacity(0.08), width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppColors.iconMuted, size: AppDims.sp48),
          SizedBox(height: AppDims.h16),
          Text(
            message,
            style: TextStyle(
              color: AppColors.textMuted,
              fontSize: AppDims.sp14,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
