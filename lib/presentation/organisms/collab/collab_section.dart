import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_state.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';
import 'package:mqfm_apps/presentation/molecules/collab/collab_card.dart';

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
          error: (_) => _buildError(context),
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

  Widget _buildError(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Kolaborasi Playlist'),
        SizedBox(height: AppDims.h12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: GestureDetector(
            onTap: () =>
                context.read<PlaylistBloc>().add(const PlaylistEvent.fetch()),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: AppDims.h20),
              decoration: BoxDecoration(
                color: AppColors.surfaceCard,
                borderRadius: BorderRadius.circular(AppDims.r12),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.refresh_rounded,
                    color: AppColors.primary,
                    size: AppDims.sp32,
                  ),
                  SizedBox(height: AppDims.h8),
                  Text(
                    'Gagal memuat kolaborasi',
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    'Ketuk untuk coba lagi',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp11,
                    ),
                  ),
                ],
              ),
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
                child: CollabCard(
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
