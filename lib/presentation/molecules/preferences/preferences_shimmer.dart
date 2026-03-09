import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:shimmer/shimmer.dart';

class PreferencesShimmer extends StatelessWidget {
  const PreferencesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBaseDark,
      highlightColor: AppColors.shimmerBase,
      child: Padding(
        padding: EdgeInsets.all(AppDims.r16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppDims.w120,
              height: AppDims.h16,
              decoration: BoxDecoration(
                color: AppColors.onPrimary,
                borderRadius: BorderRadius.circular(AppDims.r4),
              ),
            ),
            SizedBox(height: AppDims.h8),
            Container(
              height: AppDims.h80,
              decoration: BoxDecoration(
                color: AppColors.onPrimary,
                borderRadius: BorderRadius.circular(AppDims.r12),
              ),
            ),
            SizedBox(height: AppDims.h24),
            Container(
              width: AppDims.w100,
              height: AppDims.h16,
              decoration: BoxDecoration(
                color: AppColors.onPrimary,
                borderRadius: BorderRadius.circular(AppDims.r4),
              ),
            ),
            SizedBox(height: AppDims.h8),
            Container(
              height: AppDims.h80,
              decoration: BoxDecoration(
                color: AppColors.onPrimary,
                borderRadius: BorderRadius.circular(AppDims.r12),
              ),
            ),
            SizedBox(height: AppDims.h24),
            Container(
              height: AppDims.h48,
              decoration: BoxDecoration(
                color: AppColors.onPrimary,
                borderRadius: BorderRadius.circular(AppDims.r12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
