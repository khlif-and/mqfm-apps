import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class AddToPlaylistSheet extends StatelessWidget {
  final List<PlaylistEntity> playlists;
  final bool isLoading;
  final String? errorMessage;
  final VoidCallback onCreateNewPlaylist;
  final void Function(int playlistId) onPlaylistSelected;

  const AddToPlaylistSheet({
    super.key,
    required this.playlists,
    required this.isLoading,
    required this.onCreateNewPlaylist,
    required this.onPlaylistSelected,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDims.w16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: AppDims.w40,
              height: AppDims.h4,
              decoration: BoxDecoration(
                color: AppColors.textMuted,
                borderRadius: BorderRadius.circular(AppDims.r2),
              ),
            ),
          ),
          SizedBox(height: AppDims.h16),
          Text(
            AppStrings.addToPlaylist,
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppDims.h16),
          ListTile(
            leading: Container(
              width: AppDims.w48,
              height: AppDims.w48,
              decoration: BoxDecoration(
                color: AppColors.shimmerBase,
                borderRadius: BorderRadius.circular(AppDims.r4),
              ),
              child: Icon(Icons.add, color: AppColors.textWhite, size: AppDims.r28),
            ),
            title: Text(
              AppStrings.newPlaylist,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp16,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              onCreateNewPlaylist();
            },
          ),
          Divider(color: AppColors.textSecondary),
          Expanded(
            child: _buildContent(context),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator(color: AppColors.textWhite));
    }

    if (errorMessage != null) {
      return Center(child: Text(errorMessage!, style: TextStyle(color: AppColors.error)));
    }

    if (playlists.isEmpty) {
      return Center(
        child: Text(AppStrings.noPlaylist, style: TextStyle(color: AppColors.textSecondary)),
      );
    }

    return ListView.builder(
      itemCount: playlists.length,
      addAutomaticKeepAlives: false,
      itemBuilder: (context, index) {
        final playlist = playlists[index];
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(AppDims.r4),
            child: AppNetworkImage(
              url: playlist.imageUrl,
              width: AppDims.w48,
              height: AppDims.w48,
            ),
          ),
          title: Text(
            playlist.name,
            style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp14, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "${playlist.audios.length} ${AppStrings.audioCount}",
            style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp12),
          ),
          onTap: () {
            Navigator.pop(context);
            onPlaylistSelected(playlist.id);
          },
        );
      },
    );
  }
}

