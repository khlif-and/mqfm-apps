import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class PlayerBottomActions extends StatelessWidget {
  const PlayerBottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.speaker_group_outlined, color: AppColors.textWhiteSubdued, size: AppDims.r24),
        Row(
          children: [
            Icon(Icons.share_outlined, color: AppColors.textWhiteSubdued, size: AppDims.r24),
            SizedBox(width: AppDims.w24),
            Icon(Icons.menu, color: AppColors.textWhiteSubdued, size: AppDims.r24),
          ],
        ),
      ],
    );
  }
}
