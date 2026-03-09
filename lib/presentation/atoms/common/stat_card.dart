import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class StatCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color? iconColor;

  const StatCard({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDims.r16),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(AppDims.r12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor ?? AppColors.primary,
            size: AppDims.sp24,
          ),
          SizedBox(height: AppDims.h12),
          Text(
            value,
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppDims.h4),
          Text(
            label,
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: AppDims.sp12,
            ),
          ),
        ],
      ),
    );
  }
}
