import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class PlaylistDetailTrackTile extends StatelessWidget {
  final AudioEntity audio;
  final int index;
  final VoidCallback? onTap;

  const PlaylistDetailTrackTile({
    super.key,
    required this.audio,
    required this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h6),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppDims.r6),
              child: AppNetworkImage(
                url: audio.thumbnail,
                width: AppDims.r46,
                height: AppDims.r46,
              ),
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    audio.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: AppDims.h2),
                  Text(
                    audio.artist.isNotEmpty ? audio.artist : audio.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp12),
                  ),
                ],
              ),
            ),
            Container(
              width: AppDims.r32,
              height: AppDims.r32,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.play_arrow_rounded, color: AppColors.background, size: AppDims.sp18),
            ),
          ],
        ),
      ),
    );
  }
}
