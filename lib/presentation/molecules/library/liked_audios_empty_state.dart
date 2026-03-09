import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class LikedAudiosEmptyState extends StatelessWidget {
  const LikedAudiosEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite_border, size: AppDims.r64, color: AppColors.textMuted),
          SizedBox(height: AppDims.h16),
          Text(
            "Belum ada kajian yang disukai",
            style: TextStyle(color: AppColors.textLight, fontSize: AppDims.sp14),
          ),
        ],
      ),
    );
  }
}
