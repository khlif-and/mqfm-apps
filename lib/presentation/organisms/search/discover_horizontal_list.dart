import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/search/discover_track_tile.dart';
import 'package:shimmer/shimmer.dart';

class DiscoverHorizontalList extends StatelessWidget {
  final List<AudioEntity> audios;
  final bool isLoading;
  final void Function(int audioId)? onAudioTap;

  const DiscoverHorizontalList({
    super.key,
    required this.audios,
    required this.isLoading,
    this.onAudioTap,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: AppColors.shimmerBase,
            highlightColor: AppColors.shimmerHighlight,
            child: Container(
              width: AppDims.w180,
              height: AppDims.h18,
              decoration: BoxDecoration(
                color: AppColors.backgroundBlack,
                borderRadius: BorderRadius.circular(AppDims.r4),
              ),
            ),
          ),
          SizedBox(height: AppDims.h16),
          ...List.generate(4, (_) {
            return Padding(
              padding: EdgeInsets.only(bottom: AppDims.h12),
              child: Shimmer.fromColors(
                baseColor: AppColors.shimmerBase,
                highlightColor: AppColors.shimmerHighlight,
                child: Row(
                  children: [
                    Container(
                      width: AppDims.w52,
                      height: AppDims.w52,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundBlack,
                        borderRadius: BorderRadius.circular(AppDims.r2),
                      ),
                    ),
                    SizedBox(width: AppDims.w16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: AppDims.h14,
                            decoration: BoxDecoration(
                              color: AppColors.backgroundBlack,
                              borderRadius: BorderRadius.circular(AppDims.r4),
                            ),
                          ),
                          SizedBox(height: AppDims.h8),
                          Container(
                            width: AppDims.w100,
                            height: AppDims.h12,
                            decoration: BoxDecoration(
                              color: AppColors.backgroundBlack,
                              borderRadius: BorderRadius.circular(AppDims.r4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.discoverNew,
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppDims.h16),
        if (audios.isEmpty)
          const EmptyStateCard(
            message: AppStrings.emptyData,
            icon: Icons.explore_off_rounded,
          )
        else
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: audios.length,
            itemBuilder: (context, index) {
              return DiscoverTrackTile(audio: audios[index], onTap: onAudioTap != null ? () => onAudioTap!(audios[index].id) : null);
            },
          ),
      ],
    );
  }
}
