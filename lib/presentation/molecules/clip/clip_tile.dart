import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/clip/domain/entities/clip.dart';

class ClipTile extends StatelessWidget {
  final ClipEntity clip;
  final VoidCallback onDelete;

  const ClipTile({super.key, required this.clip, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDims.w16,
        vertical: AppDims.h8,
      ),
      child: Row(
        children: [
          Container(
            width: AppDims.r50,
            height: AppDims.r50,
            decoration: BoxDecoration(
              color: AppColors.surfaceHighlight,
              borderRadius: BorderRadius.circular(AppDims.r8),
            ),
            child: Icon(
              Icons.content_cut,
              color: AppColors.primary,
              size: AppDims.sp22,
            ),
          ),
          SizedBox(width: AppDims.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Audio #${clip.audioId}',
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
                  '${_formatSeconds(clip.startTime)} - ${_formatSeconds(clip.endTime)}',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: AppDims.sp12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: AppDims.w8),
          GestureDetector(
            onTap: onDelete,
            child: Icon(
              Icons.delete_outline,
              color: AppColors.textSecondary,
              size: AppDims.sp20,
            ),
          ),
        ],
      ),
    );
  }

  String _formatSeconds(int seconds) {
    final min = seconds ~/ 60;
    final sec = seconds % 60;
    return '${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';
  }
}
