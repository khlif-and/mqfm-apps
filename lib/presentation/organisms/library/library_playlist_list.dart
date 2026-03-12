import 'package:flutter/material.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/library_item.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:shimmer/shimmer.dart';

class LibraryPlaylistList extends StatelessWidget {
  final bool isLoading;
  final String? errorMessage;
  final List<PlaylistEntity> playlists;
  final void Function(int playlistId)? onPlaylistTap;

  const LibraryPlaylistList({
    super.key,
    required this.isLoading,
    this.errorMessage,
    required this.playlists,
    this.onPlaylistTap,
  });

  Widget _buildShimmer() {
    return Column(
      children: List.generate(4, (_) {
        return Padding(
          padding: EdgeInsets.only(bottom: AppDims.h16),
          child: Shimmer.fromColors(
            baseColor: AppColors.shimmerBase,
            highlightColor: AppColors.shimmerHighlight,
            child: Row(
              children: [
                Container(
                  width: AppDims.w56,
                  height: AppDims.w56,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundBlack,
                    borderRadius: BorderRadius.circular(AppDims.r6),
                  ),
                ),
                SizedBox(width: AppDims.w14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: AppDims.w150,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return _buildShimmer();
    }

    if (errorMessage != null) {
      return EmptyStateCard(
        message: errorMessage!,
        icon: Icons.error_outline_rounded,
      );
    }

    if (playlists.isEmpty) {
      return const EmptyStateCard(
        message: AppStrings.noPlaylistKajian,
        icon: Icons.queue_music_rounded,
      );
    }

    return Column(
      children: playlists.map((playlist) {
        return InkWell(
          onTap: () => onPlaylistTap?.call(playlist.id),
          child: LibraryItem(
            title: playlist.name,
            subtitle: 'Playlist • ${playlist.audioCount} audio',
            imageUrl: playlist.imageUrl,
            isRoundImage: false,
          ),
        );
      }).toList(),
    );
  }
}
