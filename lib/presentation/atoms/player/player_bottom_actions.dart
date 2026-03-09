import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class PlayerBottomActions extends StatelessWidget {
  final bool isLiked;
  final VoidCallback? onLikeTap;
  final VoidCallback? onQueueTap;

  const PlayerBottomActions({
    super.key,
    this.isLiked = false,
    this.onLikeTap,
    this.onQueueTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.speaker_group_outlined, color: AppColors.textWhiteSubdued, size: AppDims.r24),
        Row(
          children: [
            GestureDetector(
              onTap: onLikeTap,
              child: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? AppColors.success : AppColors.textWhiteSubdued,
                size: AppDims.r24,
              ),
            ),
            SizedBox(width: AppDims.w24),
            GestureDetector(
              onTap: onQueueTap,
              child: Icon(Icons.menu, color: AppColors.textWhiteSubdued, size: AppDims.r24),
            ),
          ],
        ),
      ],
    );
  }
}
