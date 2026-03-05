import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_styles.dart';

class AboutLinkButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const AboutLinkButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppDims.r12),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppDims.w16,
            vertical: AppDims.h12,
          ),
          decoration: BoxDecoration(
            color: AppColors.surfaceHighlight.withOpacity(0.5),
            borderRadius: BorderRadius.circular(AppDims.r12),
            border: Border.all(
              color: AppColors.textWhite.withOpacity(0.05),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(AppDims.r8),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppDims.r8),
                ),
                child: Icon(
                  icon,
                  color: AppColors.primaryClassic,
                  size: AppDims.sp20,
                ),
              ),
              SizedBox(width: AppDims.w16),
              Expanded(
                child: Text(
                  title,
                  style: AppStyles.bodyMedium.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.textSecondary.withOpacity(0.5),
                size: AppDims.sp16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
