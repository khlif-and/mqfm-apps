import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_state.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class CollabSection extends StatelessWidget {
  final void Function(int playlistId)? onPlaylistTap;
  final VoidCallback? onSeeAll;

  const CollabSection({super.key, this.onPlaylistTap, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaylistBloc, PlaylistState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          loaded: (playlists) => playlists.isEmpty
              ? const SizedBox.shrink()
              : _buildContent(playlists),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: ShimmerBox(width: AppDims.w140, height: AppDims.h20),
        ),
        SizedBox(height: AppDims.h16),
        SizedBox(
          height: AppDims.h100,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (_, _) => SizedBox(width: AppDims.w12),
            itemBuilder: (_, _) => ShimmerBox(
              width: AppDims.w200,
              height: AppDims.h100,
              borderRadius: AppDims.r12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(List<PlaylistEntity> playlists) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Kolaborasi Playlist', onSeeAll: onSeeAll),
        SizedBox(height: AppDims.h12),
        SizedBox(
          height: AppDims.h100,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
            scrollDirection: Axis.horizontal,
            itemCount: playlists.length,
            cacheExtent: 300,
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            separatorBuilder: (_, _) => SizedBox(width: AppDims.w12),
            itemBuilder: (_, index) {
              final item = playlists[index];
              return RepaintBoundary(
                child: _CollabCard(
                  playlist: item,
                  onTap: () => onPlaylistTap?.call(item.id),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CollabCard extends StatelessWidget {
  final PlaylistEntity playlist;
  final VoidCallback? onTap;

  const _CollabCard({required this.playlist, this.onTap});

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
                      Icon(Icons.people_outline, color: AppColors.primary, size: AppDims.sp14),
                      SizedBox(width: AppDims.w4),
                      Text(
                        '${playlist.audios.length} kajian',
                        style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp11),
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
