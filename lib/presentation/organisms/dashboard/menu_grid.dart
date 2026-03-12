import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/presentation/atoms/dashboard/menu_grid_shimmer.dart';
import 'package:mqfm_apps/presentation/molecules/dashboard/quick_pick_tile.dart';

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
          itemCount: historyAudios.length > 6 ? 6 : historyAudios.length,
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          itemBuilder: (context, index) {
            final audio = historyAudios[index];
            return RepaintBoundary(child: QuickPickTile(audio: audio, onTap: onAudioTap != null ? () => onAudioTap!(audio.id) : null));
          },
        ),
      ],
    );
  }
}
