import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:shimmer/shimmer.dart';

class MenuGridShimmer extends StatelessWidget {
  const MenuGridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: AppColors.shimmerBase,
          highlightColor: AppColors.shimmerHighlight,
          child: Container(
            width: AppDims.w120,
            height: AppDims.h18,
            decoration: BoxDecoration(
              color: AppColors.backgroundBlack,
              borderRadius: BorderRadius.circular(AppDims.r4),
            ),
          ),
        ),
        SizedBox(height: AppDims.h14),
        ...List.generate(3, (_) {
          return Padding(
            padding: EdgeInsets.only(bottom: AppDims.h12),
            child: Shimmer.fromColors(
              baseColor: AppColors.shimmerBase,
              highlightColor: AppColors.shimmerHighlight,
              child: Row(
                children: [
                  Container(
                    width: AppDims.w52,
                    height: AppDims.w52,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundBlack,
                      borderRadius: BorderRadius.circular(AppDims.r6),
                    ),
                  ),
                  SizedBox(width: AppDims.w16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: AppDims.h14,
                          decoration: BoxDecoration(
                            color: AppColors.backgroundBlack,
                            borderRadius: BorderRadius.circular(AppDims.r4),
                          ),
                        ),
                        SizedBox(height: AppDims.h8),
                        Container(
                          width: AppDims.w100,
                          height: AppDims.h12,
                          decoration: BoxDecoration(
                            color: AppColors.backgroundBlack,
                            borderRadius: BorderRadius.circular(AppDims.r4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
