import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class ShimmerBox extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final BoxShape shape;

  const ShimmerBox({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 4,
    this.shape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBase,
      highlightColor: AppColors.shimmerHighlight,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.onPrimary,
          borderRadius: shape == BoxShape.rectangle
              ? BorderRadius.circular(borderRadius)
              : null,
          shape: shape,
        ),
      ),
    );
  }
}
