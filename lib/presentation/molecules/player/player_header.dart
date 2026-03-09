import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';

class PlayerHeader extends StatelessWidget {
  final VoidCallback? onBack;
  final VoidCallback? onMenu;

  const PlayerHeader({super.key, this.onBack, this.onMenu});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onBack,
          child: Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.textWhite,
            size: AppDims.r30,
          ),
        ),
        Column(
          children: [
            Text(
              AppStrings.playingFromPlaylist,
              style: TextStyle(
                color: AppColors.textWhiteSubdued,
                fontSize: AppDims.sp10,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              AppStrings.mqfmRadio,
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.bold,
                fontSize: AppDims.sp14,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: onMenu,
          child: Icon(Icons.more_vert, color: AppColors.textWhite, size: AppDims.r24),
        ),
      ],
    );
  }
}
