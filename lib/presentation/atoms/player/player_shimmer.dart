import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class PlayerShimmer extends StatelessWidget {
  const PlayerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w24, vertical: AppDims.h10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShimmerBox(width: AppDims.w32, height: AppDims.w32, shape: BoxShape.circle),
              ShimmerBox(width: AppDims.w100, height: AppDims.h14, borderRadius: AppDims.r4),
              ShimmerBox(width: AppDims.w32, height: AppDims.w32, shape: BoxShape.circle),
            ],
          ),
          const Spacer(),
          ShimmerBox(width: AppDims.w280, height: AppDims.w280, borderRadius: AppDims.r16),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerBox(width: AppDims.w200, height: AppDims.h18, borderRadius: AppDims.r4),
              SizedBox(height: AppDims.h10),
              ShimmerBox(width: AppDims.w140, height: AppDims.h14, borderRadius: AppDims.r4),
            ],
          ),
          SizedBox(height: AppDims.h24),
          ShimmerBox(width: double.infinity, height: AppDims.h4, borderRadius: AppDims.r2),
          SizedBox(height: AppDims.h24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5, (_) => ShimmerBox(width: AppDims.w40, height: AppDims.w40, shape: BoxShape.circle)),
          ),
          SizedBox(height: AppDims.h50),
        ],
      ),
    );
  }
}
