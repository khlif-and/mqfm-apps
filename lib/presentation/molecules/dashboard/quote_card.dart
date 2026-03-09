import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_images.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppDims.h180,
      padding: EdgeInsets.all(AppDims.w20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDims.r12),
        image: const DecorationImage(
          image: AssetImage(AppImages.cardPlaceholder),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          const Align(alignment: Alignment.center),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: AppDims.r32,
              height: AppDims.r32,
              decoration: const BoxDecoration(
                color: AppColors.textWhite,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_outward,
                color: AppColors.onPrimary,
                size: AppDims.sp18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
