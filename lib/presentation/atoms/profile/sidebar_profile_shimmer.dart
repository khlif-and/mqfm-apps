import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:shimmer/shimmer.dart';

class SidebarProfileShimmer extends StatelessWidget {
  const SidebarProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBase,
      highlightColor: AppColors.shimmerHighlight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppDims.r56,
            height: AppDims.r56,
            decoration: const BoxDecoration(
              color: AppColors.backgroundBlack,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: AppDims.h16),
          Container(
            width: AppDims.w140,
            height: AppDims.h18,
            decoration: BoxDecoration(
              color: AppColors.backgroundBlack,
              borderRadius: BorderRadius.circular(AppDims.r4),
            ),
          ),
          SizedBox(height: AppDims.h8),
          Container(
            width: AppDims.w180,
            height: AppDims.h12,
            decoration: BoxDecoration(
              color: AppColors.backgroundBlack,
              borderRadius: BorderRadius.circular(AppDims.r4),
            ),
          ),
          SizedBox(height: AppDims.h8),
          Container(
            width: AppDims.w50,
            height: AppDims.h20,
            decoration: BoxDecoration(
              color: AppColors.backgroundBlack,
              borderRadius: BorderRadius.circular(AppDims.r20),
            ),
          ),
        ],
      ),
    );
  }
}
