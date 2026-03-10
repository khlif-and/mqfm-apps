import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class BrowseCard extends StatelessWidget {
  final String title;
  final Color color;
  final String imageAsset;

  const BrowseCard({
    super.key,
    required this.title,
    required this.color,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppDims.r4),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(AppDims.r12),
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: -AppDims.h10,
            right:
                -15,
            child: Transform.rotate(
              angle: 25 * pi / 180,
              child: Container(
                height: AppDims.h70,
                width: AppDims.h70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDims.r4),
                  image: DecorationImage(
                    image: AssetImage(imageAsset),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.onPrimary.withValues(alpha: 0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
