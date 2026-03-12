import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_bloc.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_event.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_bloc.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_event.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_bloc.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_event.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/features/share/applications/share_bloc/share_bloc.dart';
import 'package:mqfm_apps/features/share/applications/share_bloc/share_event.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/action_circle.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/playlist_detail_track_tile.dart';

class PlaylistDetailBody extends StatelessWidget {
  final PlaylistEntity playlist;
  final Future<void> Function() onRefresh;

  const PlaylistDetailBody({super.key, required this.playlist, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: AppColors.primaryClassic,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        cacheExtent: 500,
        slivers: [
          SliverToBoxAdapter(child: _buildCoverSection(context)),
          SliverToBoxAdapter(child: _buildInfoSection()),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h16)),
          SliverToBoxAdapter(child: _buildActionRow(context)),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),
          _buildTrackList(context),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h30)),
        ],
      ),
    );
  }

  Widget _buildCoverSection(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: AppDims.h340,
          width: double.infinity,
          child: ShaderMask(
            shaderCallback: (rect) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primaryClassic.withValues(alpha: 0.6),
                AppColors.background,
              ],
            ).createShader(rect),
            blendMode: BlendMode.srcOver,
            child: AppNetworkImage(
              url: playlist.imageUrl,
              width: double.infinity,
              height: AppDims.h340,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + AppDims.h10,
          left: AppDims.w16,
          child: GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              padding: EdgeInsets.all(AppDims.w8),
              decoration: BoxDecoration(
                color: AppColors.background.withValues(alpha: 0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_back, color: AppColors.textWhite, size: AppDims.sp20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
      child: Column(
        children: [
          Text(
            playlist.name,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: AppDims.h8),
          Text(
            '${playlist.audioCount} lagu',
            style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp14),
          ),
        ],
      ),
    );
  }

  Widget _buildActionRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ActionCircle(icon: Icons.bookmark_add_rounded, size: 40, onTap: () {
          getIt<BookmarkBloc>().add(BookmarkEvent.create(audioId: 0, positionSeconds: 0, label: playlist.name));
          MessageHelper.showSuccess(context, 'Playlist dibookmark');
        }),
        SizedBox(width: AppDims.w16),
        ActionCircle(icon: Icons.download_rounded, size: 40, onTap: () {
          for (final audio in playlist.audios) {
            getIt<DownloadBloc>().add(DownloadEvent.downloadFile(audio: audio));
          }
          MessageHelper.showSuccess(context, 'Mengunduh playlist');
        }),
        SizedBox(width: AppDims.w16),
        ActionCircle(icon: Icons.play_arrow_rounded, size: 56, isPrimary: true, onTap: () {
          if (playlist.audios.isNotEmpty) {
            final manager = AudioPlayerManager();
            manager.setQueue(playlist.audios, 0);
            context.push(AppPathRoutes.playerWithId(playlist.audios.first.id.toString()));
          }
        }),
        SizedBox(width: AppDims.w16),
        ActionCircle(icon: Icons.favorite_border_rounded, size: 40, onTap: () {
          if (playlist.audios.isNotEmpty) {
            getIt<LikeBloc>().add(LikeEvent.like(targetId: playlist.audios.first.id));
          }
        }),
        SizedBox(width: AppDims.w16),
        ActionCircle(icon: Icons.share_rounded, size: 40, onTap: () {
          if (playlist.audios.isNotEmpty) {
            getIt<ShareBloc>().add(ShareEvent.getAudioShare(audioId: playlist.audios.first.id));
          }
        }),
      ],
    );
  }

  Widget _buildTrackList(BuildContext context) {
    if (playlist.audios.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: AppDims.h20),
            child: Text('Belum ada audio di playlist ini.', style: TextStyle(color: AppColors.textSecondary)),
          ),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final audio = playlist.audios[index];
          return PlaylistDetailTrackTile(
            audio: audio,
            index: index + 1,
            onTap: () => context.push(AppPathRoutes.playerWithId(audio.id.toString())),
          );
        },
        childCount: playlist.audios.length,
      ),
    );
  }
}
