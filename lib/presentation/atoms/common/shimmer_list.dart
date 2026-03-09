import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class ShimmerList extends StatelessWidget {
  final int itemCount;
  final double imageSize;
  final double imageRadius;
  final bool hasTrailing;

  const ShimmerList({
    super.key,
    this.itemCount = 6,
    this.imageSize = 0,
    this.imageRadius = 0,
    this.hasTrailing = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = imageSize > 0 ? imageSize : AppDims.r60;
    final radius = imageRadius > 0 ? imageRadius : AppDims.r8;

    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: AppDims.w16,
        vertical: AppDims.h16,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (_, _) => Padding(
        padding: EdgeInsets.only(bottom: AppDims.h16),
        child: Row(
          children: [
            ShimmerBox(
              width: size,
              height: size,
              borderRadius: radius,
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerBox(width: AppDims.w200, height: AppDims.h14),
                  SizedBox(height: AppDims.h6),
                  ShimmerBox(width: AppDims.w120, height: AppDims.h12),
                ],
              ),
            ),
            if (hasTrailing) ...[
              SizedBox(width: AppDims.w8),
              ShimmerBox(
                width: AppDims.r32,
                height: AppDims.r32,
                borderRadius: AppDims.r16,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
