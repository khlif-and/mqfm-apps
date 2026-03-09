import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class HistoryAudioTile extends StatelessWidget {
  final AudioEntity audio;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;

  const HistoryAudioTile({super.key, required this.audio, this.onTap, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppDims.h12),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(AppDims.r4),
          child: AppNetworkImage(
            url: audio.thumbnail,
            width: AppDims.w50,
            height: AppDims.w50,
            borderRadius: AppDims.r4,
          ),
        ),
        title: Text(
          audio.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp14,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          audio.artist,
          style: TextStyle(color: AppColors.textLight, fontSize: AppDims.sp12),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (onDelete != null)
              IconButton(
                onPressed: onDelete,
                icon: Icon(Icons.close, color: AppColors.textSecondary, size: AppDims.r20),
              ),
            Icon(
              Icons.play_circle_filled_rounded,
              color: AppColors.success,
              size: AppDims.r32,
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
