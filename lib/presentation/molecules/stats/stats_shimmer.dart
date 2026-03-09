import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:shimmer/shimmer.dart';

class StatsShimmer extends StatelessWidget {
  const StatsShimmer({super.key});

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
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: AppDims.h80,
                    decoration: BoxDecoration(
                      color: AppColors.onPrimary,
                      borderRadius: BorderRadius.circular(AppDims.r12),
                    ),
                  ),
                ),
                SizedBox(width: AppDims.w12),
                Expanded(
                  child: Container(
                    height: AppDims.h80,
                    decoration: BoxDecoration(
                      color: AppColors.onPrimary,
                      borderRadius: BorderRadius.circular(AppDims.r12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppDims.h24),
            Container(
              width: AppDims.w150,
              height: AppDims.h16,
              decoration: BoxDecoration(
                color: AppColors.onPrimary,
                borderRadius: BorderRadius.circular(AppDims.r4),
              ),
            ),
            SizedBox(height: AppDims.h12),
            ...List.generate(
              5,
              (_) => Padding(
                padding: EdgeInsets.only(bottom: AppDims.h8),
                child: Container(
                  height: AppDims.h20,
                  decoration: BoxDecoration(
                    color: AppColors.onPrimary,
                    borderRadius: BorderRadius.circular(AppDims.r4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
