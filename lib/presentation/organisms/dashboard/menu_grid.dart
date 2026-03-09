import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/presentation/atoms/common/placeholder_content.dart';
import 'package:mqfm_apps/presentation/atoms/dashboard/menu_grid_shimmer.dart';

class MenuGrid extends StatelessWidget {
  final List<AudioEntity> historyAudios;
  final bool isLoading;
  final void Function(int audioId)? onAudioTap;

  const MenuGrid({
    super.key,
    required this.historyAudios,
    required this.isLoading,
    this.onAudioTap,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) return const MenuGridShimmer();

    if (historyAudios.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.quickPick,
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppDims.h14),
          const EmptyStateCard(
            message: AppStrings.emptyData,
            icon: Icons.headphones_rounded,
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.quickPick,
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppDims.h14),
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: historyAudios.length,
          itemBuilder: (context, index) {
            final audio = historyAudios[index];
            return _QuickPickTile(audio: audio, onTap: onAudioTap != null ? () => onAudioTap!(audio.id) : null);
          },
        ),
      ],
    );
  }
}

class _QuickPickTile extends StatelessWidget {
  final AudioEntity audio;
  final VoidCallback? onTap;

  const _QuickPickTile({required this.audio, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppDims.h10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.textWhite.withValues(alpha: 0.15),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: AppDims.w52,
              height: AppDims.w52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDims.r6),
                image: DecorationImage(
                  image: PlaceholderContent.audioThumbnail(audio.thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: AppDims.w16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    audio.title,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp15,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    audio.description,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp13,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: AppColors.textSecondary,
                size: AppDims.sp24,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ],
        ),
      ),
    );
  }
}
