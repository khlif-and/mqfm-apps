import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_images.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

class PlaylistTrackTile extends StatelessWidget {
  final AudioEntity audio;
  final VoidCallback? onTap;

  const PlaylistTrackTile({super.key, required this.audio, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: AppDims.w48,
        height: AppDims.w48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDims.r4),
          image: DecorationImage(
            image: (audio.thumbnail.isNotEmpty)
                ? NetworkImage(audio.thumbnail)
                : const AssetImage(AppImages.cardPlaceholder)
                      as ImageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        audio.title,
        style: TextStyle(
          color: AppColors.textWhite,
          fontSize: AppDims.sp16,
          fontWeight: FontWeight.w500,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        audio.description,
        style: TextStyle(color: AppColors.textLight, fontSize: AppDims.sp12),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}
