import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class CollabCard extends StatelessWidget {
  final PlaylistEntity playlist;
  final VoidCallback? onTap;

  const CollabCard({super.key, required this.playlist, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppDims.w200,
        padding: EdgeInsets.all(AppDims.w12),
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(AppDims.r12),
        ),
        child: Row(
          children: [
            AppNetworkImage(
              url: playlist.imageUrl,
              width: AppDims.r60,
              height: AppDims.r60,
              borderRadius: AppDims.r12,
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    playlist.name,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppDims.h4),
                  Row(
                    children: [
                      Icon(
                        Icons.people_outline,
                        color: AppColors.primary,
                        size: AppDims.sp14,
                      ),
                      SizedBox(width: AppDims.w4),
                      Text(
                        '${playlist.audios.length} kajian',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: AppDims.sp11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
