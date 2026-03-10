import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/progress/domain/entities/progress.dart';

class ProgressTile extends StatelessWidget {
  final ProgressEntity progress;
  final VoidCallback? onTap;

  const ProgressTile({super.key, required this.progress, this.onTap});

  @override
  Widget build(BuildContext context) {
    final percentage = (progress.percentage * 100).clamp(0, 100).toInt();
    final isCompleted = progress.completed;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDims.w16,
          vertical: AppDims.h10,
        ),
        child: Row(
          children: [
            SizedBox(
              width: AppDims.r50,
              height: AppDims.r50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    value: progress.percentage,
                    strokeWidth: 3,
                    backgroundColor: AppColors.surfaceHighlight,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      isCompleted ? AppColors.primary : AppColors.textSecondary,
                    ),
                  ),
                  Text(
                    '$percentage%',
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Audio #${progress.audioId}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    _formatDuration(progress.lastPosition, progress.duration),
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp12,
                    ),
                  ),
                ],
              ),
            ),
            if (isCompleted)
              Icon(
                Icons.check_circle,
                color: AppColors.primary,
                size: AppDims.sp20,
              ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(int position, int duration) {
    final posMin = position ~/ 60;
    final posSec = position % 60;
    final durMin = duration ~/ 60;
    final durSec = duration % 60;
    return '${posMin.toString().padLeft(2, '0')}:${posSec.toString().padLeft(2, '0')} / '
        '${durMin.toString().padLeft(2, '0')}:${durSec.toString().padLeft(2, '0')}';
  }
}
