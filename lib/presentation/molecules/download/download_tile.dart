import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/api/api_constants.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/download/domain/entities/download.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class DownloadTile extends StatelessWidget {
  final DownloadEntity download;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;
  final bool isDownloaded;
  final double? progress;

  const DownloadTile({
    super.key,
    required this.download,
    this.onTap,
    this.onDelete,
    this.isDownloaded = false,
    this.progress,
  });

  @override
  Widget build(BuildContext context) {
    final thumbUrl = download.thumbnail.isNotEmpty
        ? download.thumbnail
        : ApiConstants.buildMediaUrl(download.audio?.thumbnail ?? '');

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDims.w16,
          vertical: AppDims.h8,
        ),
        child: Row(
          children: [
            AppNetworkImage(
              url: thumbUrl,
              width: AppDims.r56,
              height: AppDims.r56,
              borderRadius: AppDims.r8,
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    download.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: AppDims.h2),
                  Text(
                    _buildSubtitle(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp12,
                    ),
                  ),
                  SizedBox(height: AppDims.h2),
                  _ExpiryBadge(daysRemaining: download.daysRemaining),
                ],
              ),
            ),
            SizedBox(width: AppDims.w8),
            if (progress != null)
              SizedBox(
                width: AppDims.sp20,
                height: AppDims.sp20,
                child: CircularProgressIndicator(
                  value: progress,
                  strokeWidth: 2,
                  color: AppColors.primary,
                ),
              )
            else if (isDownloaded)
              Icon(
                Icons.download_done_rounded,
                color: AppColors.primary,
                size: AppDims.sp20,
              )
            else
              Icon(
                Icons.cloud_outlined,
                color: AppColors.textSecondary,
                size: AppDims.sp20,
              ),
            if (onDelete != null) ...[
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
          ],
        ),
      ),
    );
  }

  String _buildSubtitle() {
    final parts = <String>[];
    if (download.artist.isNotEmpty) parts.add(download.artist);
    if (download.durationFmt.isNotEmpty) parts.add(download.durationFmt);
    if (download.fileSize > 0) parts.add(_formatSize(download.fileSize));
    return parts.join(' • ');
  }

  static String _formatSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}

class _ExpiryBadge extends StatelessWidget {
  final int daysRemaining;

  const _ExpiryBadge({required this.daysRemaining});

  @override
  Widget build(BuildContext context) {
    if (daysRemaining <= 0) return const SizedBox.shrink();

    final isUrgent = daysRemaining <= 3;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.timer_outlined,
          size: AppDims.sp10,
          color: isUrgent ? AppColors.error : AppColors.textMuted,
        ),
        SizedBox(width: AppDims.w4),
        Text(
          '$daysRemaining hari tersisa',
          style: TextStyle(
            color: isUrgent ? AppColors.error : AppColors.textMuted,
            fontSize: AppDims.sp10,
          ),
        ),
      ],
    );
  }
}
