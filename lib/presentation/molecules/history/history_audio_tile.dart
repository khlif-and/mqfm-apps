import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

class HistoryAudioTile extends StatelessWidget {
  final PlayHistoryEntity history;
  final VoidCallback? onTap;

  const HistoryAudioTile({super.key, required this.history, this.onTap});

  @override
  Widget build(BuildContext context) {
    final dateDisplay = history.playedAt.contains('T')
        ? history.playedAt.split('T')[0]
        : history.playedAt;

    return Container(
      margin: EdgeInsets.only(bottom: AppDims.h12),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: AppDims.w50,
          height: AppDims.w50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDims.r4),
            color: AppColors.shimmerBase,
          ),
          child: Icon(Icons.music_note, color: AppColors.textWhite, size: AppDims.r24),
        ),
        title: Text(
          "Audio #${history.audioId}",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp14,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          "$dateDisplay • ${history.playCount}x diputar",
          style: TextStyle(color: AppColors.textLight, fontSize: AppDims.sp12),
        ),
        trailing: Icon(
          Icons.play_circle_filled_rounded,
          color: AppColors.success,
          size: AppDims.r32,
        ),
        onTap: onTap,
      ),
    );
  }
}
