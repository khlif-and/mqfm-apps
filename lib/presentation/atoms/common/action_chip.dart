import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class ActionChip extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool isActive;

  const ActionChip({
    super.key,
    required this.label,
    this.icon,
    this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppDims.w14,
          vertical: AppDims.h8,
        ),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : AppColors.surfaceHighlight,
          borderRadius: BorderRadius.circular(AppDims.r20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: AppDims.sp14,
                color: isActive ? AppColors.onPrimary : AppColors.textWhite,
              ),
              SizedBox(width: AppDims.w4),
            ],
            Text(
              label,
              style: TextStyle(
                color: isActive ? AppColors.onPrimary : AppColors.textWhite,
                fontSize: AppDims.sp12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
