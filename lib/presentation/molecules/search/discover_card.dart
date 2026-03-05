import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class DiscoverCard extends StatelessWidget {
  final String imageAsset;
  final String tag;

  const DiscoverCard({super.key, required this.imageAsset, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppDims.h220,
          width: AppDims.w150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDims.r8),
            image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: AppDims.h12,
                left: AppDims.w12,
                child: Text(
                  tag,
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: AppDims.sp14,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: AppColors.onPrimary.withOpacity(0.5),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
