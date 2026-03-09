import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class PlayerMenuSheet extends StatelessWidget {
  final VoidCallback? onDownload;
  final VoidCallback? onShare;
  final VoidCallback? onClip;
  final VoidCallback? onBookmark;
  final VoidCallback? onVote;
  final VoidCallback? onQueue;

  const PlayerMenuSheet({
    super.key,
    this.onDownload,
    this.onShare,
    this.onClip,
    this.onBookmark,
    this.onVote,
    this.onQueue,
  });

  static void show(
    BuildContext context, {
    VoidCallback? onDownload,
    VoidCallback? onShare,
    VoidCallback? onClip,
    VoidCallback? onBookmark,
    VoidCallback? onVote,
    VoidCallback? onQueue,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surfaceCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppDims.r16)),
      ),
      builder: (_) => PlayerMenuSheet(
        onDownload: onDownload,
        onShare: onShare,
        onClip: onClip,
        onBookmark: onBookmark,
        onVote: onVote,
        onQueue: onQueue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppDims.h16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: AppDims.w40,
              height: AppDims.h4,
              decoration: BoxDecoration(
                color: AppColors.textMuted,
                borderRadius: BorderRadius.circular(AppDims.r2),
              ),
            ),
            SizedBox(height: AppDims.h16),
            _MenuItem(
              icon: Icons.download_rounded,
              label: 'Download',
              onTap: () {
                Navigator.pop(context);
                onDownload?.call();
              },
            ),
            _MenuItem(
              icon: Icons.share_rounded,
              label: 'Share',
              onTap: () {
                Navigator.pop(context);
                onShare?.call();
              },
            ),
            _MenuItem(
              icon: Icons.content_cut_rounded,
              label: 'Buat Clip',
              onTap: () {
                Navigator.pop(context);
                onClip?.call();
              },
            ),
            _MenuItem(
              icon: Icons.bookmark_add_rounded,
              label: 'Bookmark',
              onTap: () {
                Navigator.pop(context);
                onBookmark?.call();
              },
            ),
            _MenuItem(
              icon: Icons.how_to_vote_rounded,
              label: 'Vote',
              onTap: () {
                Navigator.pop(context);
                onVote?.call();
              },
            ),
            _MenuItem(
              icon: Icons.queue_music_rounded,
              label: 'Antrian',
              onTap: () {
                Navigator.pop(context);
                onQueue?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const _MenuItem({
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: AppColors.textWhite, size: AppDims.sp24),
      title: Text(
        label,
        style: TextStyle(
          color: AppColors.textWhite,
          fontSize: AppDims.sp16,
        ),
      ),
    );
  }
}
